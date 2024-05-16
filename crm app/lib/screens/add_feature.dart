import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_encrypt/constants.dart';
import 'package:signup_encrypt/main.dart';

// ignore: must_be_immutable
class AddingFeature extends StatefulWidget {
  const AddingFeature({super.key});

  @override
  _AddingFeatureState createState() => _AddingFeatureState();
}

class _AddingFeatureState extends State<AddingFeature> {
  late TextEditingController titleController;
  late TextEditingController descController;
  GlobalKey<FormState> featureKey = GlobalKey<FormState>();

  @override
  void initState() {
    titleController = TextEditingController();
    descController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Propose new feature"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: featureKey,
          child: Column(
              children: [
                Image.asset('images/task.png'),
                Padding(
                  padding: EdgeInsets.only(
                      top: 60.0, bottom: 20.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text('Lets propose new feature to implement it after approving by admin',
                            style: TextStyle(fontSize: 20.0),
                          ),
                      Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.name,
                            controller: titleController,
                            validator: (value) {
                              if(value!.isEmpty){
                                return "it's required";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Title',
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            keyboardType: TextInputType.name,
                            controller: descController,
                            validator: (value) {
                              if(value!.isEmpty){
                                return "it's required";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Description',
                            ),
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
                          if(featureKey.currentState!.validate()){
                            MyApp.apis.addFeature(titleController.text, descController.text).then((value) => Navigator.pop(context));
                            MyApp.apis.getFeatures();
                          }
                        },
                        child: Text("Add new", style: TextStyle(
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