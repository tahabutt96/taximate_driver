import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';
import 'package:taximate_driver/screens/pickup/pickup.dart';
import 'package:taximate_driver/screens/ride/ridest.dart';
import 'package:taximate_driver/screens/takeme/takeme.dart';
import 'package:taximate_driver/screens/widgets/history.dart';
import 'package:taximate_driver/screens/widgets/profile.dart';
import 'package:taximate_driver/screens/homescreen.dart';

class Ridee extends StatefulWidget {
  const Ridee({Key? key}) : super(key: key);

  @override
  _RideeState createState() => _RideeState();
}

class _RideeState extends State<Ridee> {
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Ridest()));
  }

  @override
  void initState() {
    super.initState();
    showRelevant();
  }

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
      key: _key,
      appBar: AppBar(
        title: Text(
          "Ride",
          style: TextStyle(color: constantColors.darkFontColor),
        ),
        centerTitle: true,
        backgroundColor: constantColors.lightColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: constantColors.darkFontColor,
          ),
          onPressed: () => _key.currentState!.openDrawer(),
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: constantColors
              .primaryColor, //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              _createHeader(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: constantColors.lightColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      _createDrawerItem(
                        icon: Icons.home_outlined,
                        text: 'Home',
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      _createDrawerItem(
                        icon: Icons.pin_drop_outlined,
                        text: 'Save Address',
                        onTap: () {},
                      ),
                      _createDrawerItem(
                        icon: Icons.history,
                        text: 'History',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
                        },
                      ),
                      _createDrawerItem(
                          icon: Icons.person, text: 'Profile', onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                      }),
                      _createDrawerItem(
                          icon: Icons.logout, text: 'Log Out', onTap: () {}),
                    ],
                  ),
                ),
              )
            ],
          ),
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
              Positioned(
                top:520,
                left: 120,
                child: ElevatedButton(
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
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
