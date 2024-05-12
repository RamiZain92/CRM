const mongoose = require('mongoose');

const agentSchema = new mongoose.Schema({
  firstName: {type :String, required: true},
  lastName: {type: String, required: true},
  role: {type: String, required: true},
  country: {type: String, required: true},
  age: {type: Number, required: true},
  balance: {type: Number, required: true}
});

module.exports = mongoose.model('Agent', agentSchema);