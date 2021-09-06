import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';
import 'package:taximate_driver/screens/pickup/pickup.dart';
import 'package:taximate_driver/screens/ride/rideest.dart';
import 'package:taximate_driver/screens/takeme/takeme.dart';
import 'package:taximate_driver/screens/widgets/history.dart';
import 'package:taximate_driver/screens/widgets/messages.dart';
import 'package:taximate_driver/screens/widgets/profile.dart';
import 'package:taximate_driver/screens/homescreen.dart';

class Ridest extends StatefulWidget {
  const Ridest({Key? key}) : super(key: key);

  @override
  _RidestState createState() => _RidestState();
}

class _RidestState extends State<Ridest> {
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Rideest()));
  }

  @override
  void initState() {
    super.initState();
    showRelevant();
  }

  ConstantColors constantColors = ConstantColors();
  bool value = false;


  showAlertDialog(BuildContext context) {


    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Are you sure cancle your ride ?")),
      content: Container(
        height: MediaQuery.of(context).size.height/7,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: constantColors.greenColor),
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 15.0),
                          child: Text("Yes",style: TextStyle(color: constantColors.lightColor),),
                        )),
                  ),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: constantColors.redColor),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 15.0),
                          child: Text("No",style: TextStyle(color: constantColors.lightColor),),
                        )),
                  ),
                ],
              )
            ]
        ),
      ),
      // actions: [
      //   okButton,
      // ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ride Status",
          style: TextStyle(color: constantColors.darkFontColor),
        ),
        centerTitle: true,
        backgroundColor: constantColors.lightColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: constantColors.darkFontColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body:  SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage("assets/images/googlemap.png"),
                    fit: BoxFit.cover,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: constantColors.lightColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 5,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: constantColors.blueColor),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Messages()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 80.0, vertical: 15.0),
                                child: Text("Message"),
                              )),
                          SizedBox(height: 10),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: constantColors.greenColor),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Rideest()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 15.0),
                                child: Text("I HAVE ARRIVED"),
                              )),
                        ],
                      ),
                    ),

                  ),SizedBox(height: 70,)
                ],
              ),

            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
