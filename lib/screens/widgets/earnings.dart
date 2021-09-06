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
import 'package:taximate_driver/screens/widgets/topuphistory.dart';
import 'package:taximate_driver/screens/widgets/withdrawhistory.dart';

class Earnings extends StatefulWidget {
  const Earnings ({Key? key}) : super(key: key);

  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {

  ConstantColors constantColors = ConstantColors();

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
  showAlertDialog1(BuildContext context) {


    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Withdraw Funds Request")),
      content: Container(
        height: MediaQuery.of(context).size.height/2.9,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Please review your withdrawl details"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text("Transfer to"),
                  SizedBox(width: 20),
                  Text("CASH",style: TextStyle(fontWeight: FontWeight.bold),),

                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text("Amount"),
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
                      child: Text("CONFIRM & WITHDRAW",style: TextStyle(color: constantColors.lightColor),),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.redColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 15.0),
                      child: Text("CANCLE WITHDRAW",style: TextStyle(color: constantColors.lightColor),),
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
      appBar: AppBar(
        title: Text(
          "Earnings",
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
        child: Column(
          children: [
            SizedBox(height: 5,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Color(0xFFF5EDFF),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("NET INCOME"),
                      Text("\$145.25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Color(0xFFFFF8ED),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WITHDRAW"),
                          Text("\$6454.5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Whhist()));
                          },
                          child: Container(
                            width: 150,
                            color: constantColors.primaryButtonColor,
                             child: Padding(
                               padding: const EdgeInsets.all(12.0),
                               child: Text("VIEW DETAILS",textAlign: TextAlign.center,style: TextStyle(color: constantColors.lightColor),),
                             ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Color(0xFFEDF8FF),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("AVAILABLE FOR WITHDRAWL"),
                          Text("\$1545.25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: (){
                            showAlertDialog1(context);
                          },
                          child: Container(
                            width: 150,
                            color: constantColors.greenColor,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text("WITHDRAW",textAlign: TextAlign.center, style: TextStyle(color: constantColors.lightColor),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Color(0xFFEDF8FF),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("TOTAL TOPUP"),
                          Text("\$1405.25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0,right: 10.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Topuphis()));
                              },
                              child: Container(
                                width: 150,
                                color: constantColors.primaryButtonColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text("VIEW DETAILS",textAlign: TextAlign.center,style: TextStyle(color: constantColors.lightColor),),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              showAlertDialog(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0,right: 10.0),
                              child: Container(
                                width: 150,
                                color: constantColors.greenColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text("ADD FUNDS",textAlign: TextAlign.center,style: TextStyle(color: constantColors.lightColor),),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
