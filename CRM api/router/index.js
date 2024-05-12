const express = require('express');
const controller = require('../controllers');
const verifyToken = require('../middlewares/verifyToken');
const router = express.Router();

router
  .route("/create-user")
  .post(verifyToken, controller.createUser);
router
  .route("/login-user")
  .post(controller.loginUser);
router
  .route("/create-agent")
  .post(verifyToken, controller.createAgent);
router
  .route("/create-feature")
  .post(verifyToken, controller.createFeature);
router
  .route("/get-users")
  .get(verifyToken, controller.getUsers);
  router
  .route("/get-user")
  .get(verifyToken, controller.getUser);
router
  .route("/get-agents")
  .get(verifyToken, controller.getAgents);
router
  .route("/get-features")
  .get(verifyToken, controller.getFeatures);
router
  .route("/delete-user")
  .delete(verifyToken, controller.deleteUser);
router
  .route("/delete-agent")
  .delete(verifyToken, controller.deleteAgent);
router
  .route("/update-user")
  .put(verifyToken, controller.updateUser);
router
  .route("/update-agent")
  .put(verifyToken, controller.updateAgent);
router
  .route("/update-feature")
  .put(verifyToken, controller.updateFeature);

module.exports = router;