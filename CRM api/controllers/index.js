const httpStatus = require('http-status');
const ApiError = require('../utils/ApiError');
const catchAsync = require('../utils/catchAsync');
const jwt= require('jsonwebtoken');
const Bcrypt=require('bcrypt')
const { HttpStatusCodes, HttpResponseMessages } = require('../utils/constants');
const { User, Agent, Feature } = require('../model');

const createUser = catchAsync(async (req, res) => {
    const userId = req.userId;
    const loginUser = await User.findById(userId);
    if(!loginUser || loginUser.role === "developer") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the Admin only can do that');
    }
    if(loginUser.role === "support" && req.body.role !== "developer"){
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the Support can add developer users only');
    }
    let user = await User.findOne({username:req.body.username});
    if(user) {
        throw new ApiError(httpStatus.BAD_REQUEST, 'User already exist');
    } else {
        user = new User(req.body)
        await user.save();
    }
    res.status(httpStatus.CREATED).send({
      code: HttpStatusCodes.CREATED,
      message: HttpResponseMessages.CREATED,
      data: user,
    });
});

const createAgent = catchAsync(async (req, res) => {
    const userId = req.userId;
    const loginUser = await User.findById(userId);
    if(!loginUser || loginUser.role === "developer") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the developer can not adding agent');
    }
    let user = new Agent(req.body)
    await user.save();
    res.status(httpStatus.CREATED).send({
      code: HttpStatusCodes.CREATED,
      message: HttpResponseMessages.CREATED,
      data: user,
    });
});

const createFeature = catchAsync(async (req, res) => {
    const userId = req.userId;
    const loginUser = await User.findById(userId);
    if(!loginUser || loginUser.role !== "developer") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the developer only can do that');
    }
    let feature = new Feature(req.body)
    await feature.save();
    res.status(httpStatus.CREATED).send({
      code: HttpStatusCodes.CREATED,
      message: HttpResponseMessages.CREATED,
      data: feature,
    });
});

const loginUser = catchAsync(async (req, res) => {
    const user = await User.findOne({username: req.body.username});
    if (!user) {
      throw new ApiError(httpStatus.NOT_FOUND, 'User not found');
    }
    if(!Bcrypt.compareSync(req.body.password,user.password)){
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Wrong password');
    }
    const token = jwt.sign(
        {
            username:req.body.username,
            role:user.role,
            id:user._id
        }, process.env.SECRET
    );
    let loginData = {
        username: user.username,
        role: user.role,
        token: token
    }
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
      data: loginData,
    });
});

const getUsers = catchAsync(async (req, res) => {
    const users =  await User.find({}, 'username role');
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
      data: users,
    });
});

const getUser = catchAsync(async (req, res) => {
    const user =  await User.findOne({_id: req.userId});
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
      data: user,
    });
});

const getAgents = catchAsync(async (req, res) => {
    const users =  await Agent.find();
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
      data: users,
    });
});

const getFeatures = catchAsync(async (req, res) => {
    const features =  await Feature.find().populate('submittedBy', 'username')
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
      data: features.reverse(),
    });
});

const updateUser = catchAsync(async (req, res) => {
    const userId = req.userId;
    const user = await User.findById(userId);
    if(!user || user.role === "developer" || user.role === "support") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the Admin only can do that');
    }
    const updated = await User.findByIdAndUpdate({_id: req.query.id}, req.body).exec()
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
      data: updated,
    });
});

const updateAgent = catchAsync(async (req, res) => {
    const userId = req.userId;
    const user = await User.findById(userId);
    if(!user || user.role === "developer" || user.role === "support") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the Admin only can do that');
    }
    const updated = await User.findByIdAndUpdate({_id: req.query.id}, req.body).exec()
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
      data: updated,
    });
});

const updateFeature = catchAsync(async (req, res) => {
    const userId = req.userId;
    const user = await User.findById(userId);
    if(!user || user.role !== "admin") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the Admin only can do that');
    }
    if(req.body.status === "rejected") {
        await Feature.findByIdAndDelete(req.query.id).exec()
    } else {
        await Feature.findByIdAndUpdate({_id: req.query.id}, req.body).exec()
    }
    res.send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK
    });
});

const deleteUser = catchAsync(async (req, res) => {
    const userId = req.userId;
    const loginUser = await User.findById(userId);
    if(!loginUser || loginUser.role !== "admin") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the Admin only can do that');
    }
    await User.findOneAndDelete({_id: req.query.userId});
    res.status(httpStatus.NO_CONTENT).send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
    });;
});

const deleteAgent = catchAsync(async (req, res) => {
    const userId = req.userId;
    const loginUser = await User.findById(userId);
    if(!loginUser || loginUser.role !== "admin") {
        throw new ApiError(httpStatus.UNAUTHORIZED, 'Unauthorized: the Admin only can do that');
    }
    await Agent.findOneAndDelete({_id: req.query.userId});
    res.status(httpStatus.NO_CONTENT).send({
      code: HttpStatusCodes.OK,
      message: HttpResponseMessages.OK,
    });;
});



module.exports = {
  createUser,
  updateUser,
  deleteUser,
  loginUser,
  createAgent,
  getUsers,
  getAgents,
  updateAgent,
  deleteAgent,
  createFeature,
  updateFeature,
  getFeatures,
  getUser
};