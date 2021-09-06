import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';
import 'package:taximate_driver/screens/pickup/pickup.dart';
import 'package:taximate_driver/screens/ride/ridestatus.dart';
import 'package:taximate_driver/screens/takeme/takeme.dart';
import 'package:taximate_driver/screens/widgets/history.dart';
import 'package:taximate_driver/screens/widgets/profile.dart';
import 'package:taximate_driver/screens/homescreen.dart';

class Ride extends StatefulWidget {
  const Ride({Key? key}) : super(key: key);

  @override
  _RideState createState() => _RideState();
}

class _RideState extends State<Ride> {

  ConstantColors constantColors = ConstantColors();

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
          "Ride",
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
              Positioned(
                top: MediaQuery.of(context).size.height/7,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: constantColors.lightColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(image: AssetImage("assets/images/rideone.png"))
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.greenColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ridee()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 15.0),
                              child: Text("ACCEPT"),
                            )),
                        SizedBox(width: 10),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.redColor),
                            onPressed: () {
                             showAlertDialog(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 15.0),
                              child: Text("CANCLE"),
                            )),
                      ],
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
