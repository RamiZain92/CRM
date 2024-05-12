const catchAsync = (fn) => (req, res, next) => {
  Promise.resolve(fn(req, res, next))
    .catch((err) => {
      res.status(err.statusCode || 500).json({
        code: err.statusCode || 500,
        message: err.message || 'Internal Server Error',
        stack: process.env.NODE_ENV === 'prod' ? undefined : err.stack,
      });
    });
};

module.exports = catchAsync;