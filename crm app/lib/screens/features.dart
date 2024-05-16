import 'package:flutter/material.dart';
import 'package:signup_encrypt/main.dart';

import '../constants.dart';
import '../model/user.dart';
import '../widgets.dart';

class FeaturesScreen extends StatefulWidget {
  const FeaturesScreen({super.key});

  @override
  State<FeaturesScreen> createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  List<FeatureModel> features = [];
  @override
  void initState() {
    MyApp.socket!.on('newFeature', (data) {
      print(data);
      showToast("There are new feature please review");
      setState(() {
        features.add(FeatureModel.fromJson(data));
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    MyApp.socket!.off("newFeature");
    MyApp.socket!.on('newFeature', (data) {
      print(data);
      showToast("There are new feature please review");
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Features"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(future: MyApp.apis.getFeatures(), builder: (context, res) => res.data == null? Center(child: CircularProgressIndicator()): ListView.separated(
          itemCount: res.data!.length, itemBuilder: (BuildContext context, int index) {
            return Container(
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
                      'images/task.png',
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
                              child: Column(
                                children: [
                                  Text(
                                    "Title: ${res.data![index].title}",
                                    style: TextStyle(
                                      fontSize: fourteen,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Description: ${res.data![index].description}",
                                    style: TextStyle(
                                      fontSize: twelve,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Column(
                              children: [
                                Text(
                                  "Status: ${res.data![index].status.capitalize()}",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: twelve,
                                    fontWeight: FontWeight.bold,
                                    color: res.data![index].status == "approved"? Colors.lightGreen:Colors.blueGrey,
                                  ),
                                ),
                                if(userModel!.role == "admin")
                                Row(children: [
                                  IconButton(onPressed: (){
                                    MyApp.apis.updateFeature("approved", res.data![index].id).then((value) => setState(() {}));

                                  }, icon: Icon(Icons.check)),
                                  SizedBox(width: 5),
                                  IconButton(onPressed: (){
                                    MyApp.apis.updateFeature("rejected", res.data![index].id).then((value) => setState(() {}));
                                    setState(() {

                                    });
                                  }, icon: Icon(Icons.cancel_outlined)),
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
            );
        }, separatorBuilder: (BuildContext context, int index)  => const SizedBox(height: ten),
        )),
      ),
    );
  }
}
