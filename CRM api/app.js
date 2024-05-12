const express = require('express');
require('dotenv').config()
const routes = require('./router');
const cors = require('cors');
const mongoose = require("mongoose");
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true })); 
app.use(cors({
    origin: '*',
}));
app.use('/api',routes)

app.get("/" ,function(req,res){
    res.send("API is Running ")
});

const port = process.env.PORT || '3000';

let server;
mongoose.set('strictQuery', true);

console.log(process.env.MONGO_URL)
mongoose.connect(process.env.MONGO_URL,
    {
      useNewUrlParser: true,
      useUnifiedTopology: true
    }
  ).then(() => {
    console.log('Connected to MongoDB');
     server = app.listen(port, () => {
      console.log(`Listening to port ${port}`);
    });
  }).catch((err) => {
    console.log(err);
});

const exitHandler = () => {
if (server) {
    server.close(() => {
    console.log('Server closed');
    process.exit(1);
    });
} else {
    process.exit(1);
}
};

const unexpectedErrorHandler = (error) => {
    console.log(error)
    exitHandler();
};

process.on('uncaughtException', unexpectedErrorHandler);
process.on('unhandledRejection', unexpectedErrorHandler);

process.on('SIGTERM', () => {
console.log('SIGTERM received');
    if (server) {
        server.close();
    }
});