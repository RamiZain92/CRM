class UserModel{
  late String id;
  late String username;
  late String role;

  UserModel.fromJson(Map<String, dynamic> json){
    id = json['_id']??"";
    username = json['username']??"";
    role = json['role']??"";
  }
}

class AgentModel{
  late String id;
  late String firstName;
  late String lastName;
  late int balance;
  late int age;
  late String country;
  late String role;

  AgentModel.fromJson(Map<String, dynamic> json){
    id = json['_id']??"";
    firstName = json['firstName']??"";
    lastName = json['lastName']??"";
    country = json['country']??"";
    balance = json['balance']??0.0;
    age = json['age']??0;
    role = json['role']??"";
  }
}

class FeatureModel{
  late String id;
  late String title;
  late String description;
  late String status;

  FeatureModel.fromJson(Map<String, dynamic> json){
    id = json['_id']??"";
    title = json['title']??"";
    description = json['description']??"";
    status = json['status']??"";
  }
}