import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';
import 'package:taximate_driver/screens/pickup/pickup.dart';
import 'package:taximate_driver/screens/ride/ridest.dart';
import 'package:taximate_driver/screens/takeme/takeme.dart';
import 'package:taximate_driver/screens/widgets/history.dart';
import 'package:taximate_driver/screens/widgets/profile.dart';
import 'package:taximate_driver/screens/homescreen.dart';
import 'package:taximate_driver/screens/widgets/review.dart';

class Topuphis extends StatefulWidget {
  const Topuphis ({Key? key}) : super(key: key);

  @override
  _TopuphisState createState() => _TopuphisState();
}

class _TopuphisState extends State<Topuphis> {

  ConstantColors constantColors = ConstantColors();
  bool value = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: constantColors.primaryColor,
        ),
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Container(
                child: Image(
                  image: AssetImage("assets/images/sos.png"),
                  fit: BoxFit.contain,
                  width: 50,
                  height: 50,
                )),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("TAHA BUTT",
                        style: TextStyle(
                          color: constantColors.darkColor,
                          fontSize: 16.0,
                        )),
                  ),
                ),
                Container(
                  child: Text("Johnsmith20@gmail.com",
                      style: TextStyle(
                        color: constantColors.primaryFontColor,
                        fontSize: 16.0,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 27,
                    width: 180,
                    color: constantColors.primaryButtonColor,
                    child: Center(child: Text("Available Balance: 5842",style: TextStyle(color: constantColors.lightColor),)),
                  ),
                )
              ],
            ),
          )

        ]));
  }

  Widget _createDrawerItem(
      {required IconData icon,
        required String text,
        required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  showAlertDialog(BuildContext context) {


    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Deposit topup Amount")),
      content: Container(
        height: MediaQuery.of(context).size.height/5,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Please review your topup details"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text("Entered Amount"),
                  SizedBox(width: 20),
                  Text("\$145.25",style: TextStyle(fontWeight: FontWeight.bold),),

                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.greenColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 15.0),
                      child: Text("NEXT",style: TextStyle(color: constantColors.lightColor),),
                    )),
              ),
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
      key: _key,
      appBar: AppBar(
        title: Text(
          "Top up History",
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
        child: Container(
          child: Image(image: AssetImage("assets/images/th.png")),
        )
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
