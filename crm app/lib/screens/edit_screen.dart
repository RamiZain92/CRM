import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_encrypt/constants.dart';
import 'package:signup_encrypt/main.dart';
import 'package:signup_encrypt/widgets.dart';

import 'list_users.dart';

// ignore: must_be_immutable
class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key, required this.type, this.userName = "", this.firstName = "", this.lastName = "", this.balance = 0, this.age = 0, this.country = "", required this.role, required this.userId});
  final String userId;
  final String type;
  final String userName;
  final String firstName;
  final String lastName;
  final int balance;
  final int age;
  final String country;
  final String role;

  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  late TextEditingController userNameController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController countryNameController;
  late TextEditingController ageController;
  late TextEditingController balanceController;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  late String _selectedRole = "admin";
  late String _selectedRoleAgent = "A";
  final List<String> roles= ['admin', 'support', 'developer'];
  final List<String> rolesAgent= ['A', 'B', 'C'];

  @override
  void initState() {
    userNameController = TextEditingController(text: widget.userName);
    firstNameController = TextEditingController(text: widget.firstName);
    lastNameController = TextEditingController(text: widget.lastName);
    countryNameController = TextEditingController(text: widget.country);
    ageController = TextEditingController(text: widget.age.toString());
    balanceController = TextEditingController(text: widget.balance.toString());
    _selectedRole = widget.role;
    _selectedRoleAgent = widget.role;
    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    countryNameController.dispose();
    ageController.dispose();
    balanceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(widget.type == "user"? "Add User":"Add Agent"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: loginKey,
            child: Column(
              children: [
                Image.asset('images/add-user.png'),
                Padding(
                  padding: EdgeInsets.only(
                      top: 60.0, bottom: 20.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text('Lets add',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Column(
                        children: [
                          if(widget.type == "agent")
                            TextFormField(
                              keyboardType: TextInputType.name,
                              controller: firstNameController,
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "it's required";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'First Name',
                              ),
                            ),
                          if(widget.type == "agent")
                            SizedBox(height: 20.0),
                          if(widget.type == "agent")
                            TextFormField(
                              keyboardType: TextInputType.name,
                              controller: lastNameController,
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "it's required";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Last Name',
                              ),
                            ),
                          if(widget.type == "agent")
                            SizedBox(height: 20.0),
                          if(widget.type == "agent")
                            TextFormField(
                              controller: countryNameController,
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "it's required";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Country',
                              ),
                            ),
                          if(widget.type == "agent")
                            SizedBox(height: 10.0),
                          if(widget.type == "agent")
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: ageController,
                              validator: (value) {
                                if(value!.isEmpty || int.parse(value!) <= 18){
                                  return "it's required and please enter age greater than 18";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Age',
                              ),
                            ),
                          if(widget.type == "agent")
                            SizedBox(height: 10.0),
                          if(widget.type == "agent")
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: balanceController,
                              validator: (value) {
                                if(value!.isEmpty || int.parse(value) == 0){
                                  return "Invalid balance";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Balance',
                              ),
                            ),
                          if(widget.type == "agent")
                            SizedBox(height: 10.0),
                          if(widget.type == "agent")
                            Row(
                              children: [
                                Text('Select Role',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: DropdownButton<String>(
                                    value: _selectedRoleAgent,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedRoleAgent = newValue!;
                                      });
                                    },
                                    items: rolesAgent.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value.capitalizee()),
                                      );
                                    }).toList(),
                                    hint: Text('Select Role'),

                                  ),
                                ),
                              ],
                            ),
                          if(widget.type == "user")
                            TextFormField(
                              keyboardType: TextInputType.name,
                              controller: userNameController,
                              validator: (value) {
                                if(RegExp(r'^[a-zA-Z0-9_-]{3,16}$').hasMatch(value!)){
                                  return null;
                                }
                                return "Invalid username";
                              },
                              decoration: InputDecoration(
                                labelText: 'User Name',
                              ),
                            ),
                          if(widget.type == "user")
                            SizedBox(height: 10.0),
                          if(widget.type == "user")
                            Row(
                              children: [
                                Text('Select Role',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: DropdownButton<String>(
                                    value: _selectedRole,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedRole = newValue!;
                                      });
                                    },
                                    items: roles.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value.capitalizee()),
                                      );
                                    }).toList(),
                                    hint: Text('Select Role'),

                                  ),
                                ),
                              ],
                            ),

                          SizedBox(height: 10.0),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor, // Customize button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                        onPressed: (){
                          if(loginKey.currentState!.validate()) {
                            if (widget.type == "user") {
                              MyApp.apis.updateUser(
                                  widget.userId, userNameController.text,
                                  _selectedRole).then((value) {
                                navigatePushAndRemoveUntil(
                                    context, ListOfUsers());
                              });
                            } else {
                              MyApp.apis.updateAgent(
                                  widget.userId,
                                  firstNameController.text,
                                  lastNameController.text,
                                  countryNameController.text,
                                  _selectedRoleAgent,
                                  double.parse(balanceController.text),
                                  int.parse(ageController.text)).then((value) {
                                navigatePushAndRemoveUntil(
                                    context, ListOfUsers());
                              });
                            }
                          }
                        },
                        child: Text("Update", style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}