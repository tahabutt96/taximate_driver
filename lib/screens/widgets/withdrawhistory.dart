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

class Whhist extends StatefulWidget {
  const Whhist ({Key? key}) : super(key: key);

  @override
  _WhhistState createState() => _WhhistState();
}

class _WhhistState extends State<Whhist> {

  ConstantColors constantColors = ConstantColors();

  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Withdraw History",
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
        child:  Container(
          child: Image(image: AssetImage("assets/images/wh.png")),
        )
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
