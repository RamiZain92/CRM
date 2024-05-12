const winston = require('winston');
const util = require('util');
const config = require('./config');
const enumerateErrorFormat = winston.format((info) => {
  if (info instanceof Error) {
    Object.assign(info, {
      message: info.stack
    });
  }
  return info;
});
// Custom format to handle object logging
const objectStringifyFormat = winston.format((info) => {
  const clonedInfo = {
    ...info
  };
  for (const prop in clonedInfo) {
    if (typeof clonedInfo[prop] === 'object') {
      clonedInfo[prop] = util.inspect(clonedInfo[prop], {
        depth: null
      });
    }
  }
  return clonedInfo;
});
const logger = winston.createLogger({
  level: config.NODE_ENV === 'local' ? 'debug' : 'info',
  format: winston.format.combine(
    enumerateErrorFormat(),
    objectStringifyFormat(), // Use the custom format to stringify objects
    config.NODE_ENV === 'local' ? winston.format.colorize() :
    winston.format.uncolorize(),
    winston.format.splat(),
    winston.format.printf(({
      level,
      message
    }) => `${level}: ${message}`)
  ),
  transports: [
    new winston.transports.Console({
      stderrLevels: ['error'],
      format: winston.format.combine(
        winston.format.colorize(),
        winston.format.printf(({
          level,
          message,
          ...args
        }) => {
          if (args && args.meta && args
            .meta instanceof Error) {
            return `${level}: ${message} ${args.meta.stack}`;
          }
          return `${level}: ${message}`;
        })
      ),
    }),
  ],
});
module.exports = logger;