import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:signup_encrypt/Locale/cacheHelper.dart';
import 'package:signup_encrypt/api.dart';
import 'package:signup_encrypt/main.dart';
import 'package:signup_encrypt/widgets.dart';

import 'constants.dart';
import 'model/user.dart';

class Apis{
  final String apiUrl = 'http://192.168.0.106:3000/api/';

  Future<bool> login({required String username, required String password}) async {
    try {
      Response response = await Api.post(
        '$apiUrl/login-user',
        data: {
          "username": username,
          "password": password
        },
      );
      debugPrint(response.data.toString());
      if (response.statusCode == 200) {
        token = response.data['data']['token'];
        userModel = UserModel.fromJson(response.data['data']);
        CacheHelper.saveData(key: 'token', value: token);
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> getUser() async {
    try {
      Response response = await Api.get(
        '$apiUrl/get-user'
      );
      debugPrint(response.data.toString());
      if (response.statusCode == 200) {
        userModel = UserModel.fromJson(response.data['data']);
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> addAgent(
      String firstName,
      String lastName,
      String country,
      String role,
      double balance,
      int age,
      ) async {
    try {
      Response response = await Api.post(
        '$apiUrl/create-agent',
        data:{
          "firstName": firstName,
          "lastName": lastName,
          "country": country,
          "balance": balance,
          "age": age,
          "role": role
        },
      );
      if (response.statusCode == 201) {
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> updateAgent(
      String userId,
      String firstName,
      String lastName,
      String country,
      String role,
      double balance,
      int age,
      ) async {
    try {
      Response response = await Api.put(
        '$apiUrl/update-agent',
        queryParameters: {
          "id": userId,
        },
        data:{
          "firstName": firstName,
          "lastName": lastName,
          "country": country,
          "balance": balance,
          "age": age,
          "role": role
        },
      );
      print(response.data);
      if (response.statusCode == 200) {
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> addUser(
      String userName,
      String pass,
      String role,
      ) async {
    try {
      Response response = await Api.post(
        '$apiUrl/create-user',
        data:{
          "username": userName,
          "password": pass,
          "role": role
        },
      );
      if (response.statusCode == 201) {
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> addFeature(
      String title,
      String desc,
      ) async {
    try {
      Response response = await Api.post(
        '$apiUrl/create-feature',
        data: {
          "title": title,
          "description": desc
        },
      );
      if (response.statusCode == 201) {
        print(response.data);
        MyApp.socket!.emit('newFeature', response.data['data']);
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> updateUser(
      String userId,
      String userName,
      String role,
      ) async {
    try {
      Response response = await Api.put(
        '$apiUrl/update-user',
        queryParameters: {
          "id": userId,
        },
        data:{
          "username": userName,
          "role": role
        },
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> updateFeature(
      String status,
      String id,
      ) async {
    try {
      Response response = await Api.put(
        '$apiUrl/update-feature',
        queryParameters: {
          "id": id,
        },
        data:{
          "status": status,
        },
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<List<AgentModel>> getAgents() async {
    try {
      Response response = await Api.get(
        '$apiUrl/get-agents',
      );
      print(response.data);
      List<AgentModel> agents = [];
      if (response.statusCode == 200) {
        response.data['data'].forEach((e){
          agents.add(AgentModel.fromJson(e));
        });
        return agents;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return [];
    }
  }

  Future<List<UserModel>> getUsers() async {
    try {
      Response response = await Api.get(
        '$apiUrl/get-users',
      );
      print(response.data);
      List<UserModel> users = [];
      if (response.statusCode == 200) {
        response.data['data'].forEach((e){
          users.add(UserModel.fromJson(e));
        });
        return users;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return [];
    }
  }

  Future<List<FeatureModel>> getFeatures() async {
    try {
      Response response = await Api.get(
        '$apiUrl/get-features',
      );
      print(response.data);
      List<FeatureModel> features = [];
      if (response.statusCode == 200) {
        response.data['data'].forEach((e){
          features.add(FeatureModel.fromJson(e));
        });
        print(features);
        return features;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return [];
    }
  }

  Future<bool> deleteUser(String id) async {
    try {
      Response response = await Api.delete(
        '$apiUrl/delete-user', queryParameters: {"userId": id}
      );
      print(response.data);
      if (response.statusCode == 204) {
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<bool> deleteAgent(String id) async {
    try {
      Response response = await Api.delete(
        '$apiUrl/delete-agent', queryParameters: {"userId": id}
      );
      print(response.data);
      if (response.statusCode == 204) {
        return true;
      } else {
        showToastError(response.data['message']);
        throw "error";
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }
}