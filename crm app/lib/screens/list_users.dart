import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:signup_encrypt/Locale/cacheHelper.dart';
import 'package:signup_encrypt/main.dart';
import 'package:signup_encrypt/screens/add_feature.dart';
import 'package:signup_encrypt/screens/edit_screen.dart';
import 'package:signup_encrypt/screens/features.dart';
import '../constants.dart';
import '../model/user.dart';
import '../widgets.dart';
import 'add_user.dart';

class ListOfUsers extends StatefulWidget {
  const ListOfUsers({super.key});

  @override
  State<ListOfUsers> createState() => _ListOfUsersState();
}

class _ListOfUsersState extends State<ListOfUsers> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<UserModel> users = [];
  List<AgentModel> agents = [];

  @override
  void initState() {
    super.initState();
    MyApp.apis.getAgents().then((value) {
      setState(() {
        agents = value;
      });
    });
    MyApp.apis.getUsers().then((value) {
      setState(() {
        users = value;
      });
    });
    MyApp.apis.getAgents().then((value) => agents = value);
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.logout), onPressed: () {
          token = null;
          CacheHelper.removeData(key: 'token');
          navigatePushAndRemoveUntil(context, SignUpScreen());
        },),
        bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white, // Use primary color for tab indicator
              tabs: [
                Tab(text: 'Agents'),
                Tab(text: 'Users'),
              ],
            ),
        actions: [
          if(userModel!.role != "support")
          IconButton(onPressed: (){
            navigateTo(context, FeaturesScreen());
          }, icon: Icon(Icons.group)),
          IconButton(onPressed: (){
          showBottomModalSheetCustom(context: context,  options: [
            if(userModel!.role != "developer")
            OptionsModal("Add User", (){
              Navigator.pop(context);
              navigateTo(context, AddingUserAgent(type: "user",));
            }),
            if(userModel!.role != "developer")
            OptionsModal("Add Agent", (){
              Navigator.pop(context);
              navigateTo(context, AddingUserAgent(type: "agent",));
            }),
            if(userModel!.role == "developer")
            OptionsModal("Propose Feature", (){
              Navigator.pop(context);
              navigateTo(context, AddingFeature());
            }),
            OptionsModal("Cancel", (){
              Navigator.pop(context);
            }),
          ]);
        }, icon: Icon(Icons.add))
      ],),
      body: Column(
        children: [
          if(userModel!=null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Expanded(child: Text("${userModel!.username.capitalize()} / ${userModel!.role.capitalize()}")),
              Image.asset("images/user.png", height: fifty, width: fifty,)
            ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // First Tab View
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(height: ten),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ten),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.grey,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(fourteen),
                      margin: EdgeInsets.symmetric(horizontal: three),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(ten),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              'images/agent.png',
                              width: sixtyFive,
                              height: sixtyFive,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: fourteen),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${agents[index].firstName} ${agents[index].lastName}",
                                        style: TextStyle(
                                          fontSize: sixteen,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Column(
                                      children: [
                                        Text(
                                          agents[index].role,
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Row(children: [
                                          IconButton(onPressed: (){
                                            navigateTo(context, UpdateScreen(type: "agent", role: agents[index].role, userId: agents[index].id, age: agents[index].age, balance: agents[index].balance, country: agents[index].country, firstName: agents[index].firstName, lastName: agents[index].lastName,));
                                          }, icon: Icon(Icons.edit)),
                                          SizedBox(width: 5),
                                          IconButton(onPressed: (){
                                            MyApp.apis.deleteAgent(agents[index].id).then((value){
                                              MyApp.apis.getAgents().then((value) {
                                                setState(() {
                                                  agents = value;
                                                });
                                              });
                                            });
                                          }, icon: Icon(Icons.delete_forever)),
                                          SizedBox(width: 5),
                                        ],),
                                      ],
                                    )

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    itemCount: agents.length,
                  ),
                ),
                // Second Tab View
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(height: ten),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ten),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.grey,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(fourteen),
                      margin: EdgeInsets.symmetric(horizontal: three),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(ten),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              'images/user.png',
                              width: sixtyFive,
                              height: sixtyFive,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: fourteen),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${users[index].username}",
                                        style: TextStyle(
                                          fontSize: sixteen,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          users[index].role,
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Row(children: [
                                          IconButton(onPressed: (){
                                            navigateTo(context, UpdateScreen(type: "user", role: users[index].role, userName: users[index].username, userId: users[index].id,));
                                          }, icon: Icon(Icons.edit)),
                                          SizedBox(width: 5),
                                          IconButton(onPressed: (){
                                            if(users[index].role == "admin"){
                                              showToastError("You can not remove admin account");
                                            } else {
                                              MyApp.apis.deleteUser(
                                                  users[index].id).then((
                                                  value) {
                                                MyApp.apis.getUsers().then((
                                                    value) {
                                                  setState(() {
                                                    users = value;
                                                  });
                                                });
                                              });
                                            }
                                          }, icon: Icon(Icons.delete_forever)),
                                          SizedBox(width: 5),
                                        ],),
                                      ],
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    itemCount: users.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
