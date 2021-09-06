import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';
import 'package:taximate_driver/screens/pickup/pickup.dart';
import 'package:taximate_driver/screens/ride/ridest.dart';
import 'package:taximate_driver/screens/takeme/takeme.dart';
import 'package:taximate_driver/screens/widgets/earnings.dart';
import 'package:taximate_driver/screens/widgets/history.dart';
import 'package:taximate_driver/screens/widgets/profile.dart';
import 'package:taximate_driver/screens/homescreen.dart';
import 'package:taximate_driver/screens/widgets/review.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Earnings()));
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

      appBar: AppBar(
        title: Text(
          "Wallet",
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
              Positioned(
                left: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: constantColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      height: 250,
                      width: MediaQuery.of(context).size.width,

                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 35,width: 110,
                              color: constantColors.primaryButtonColor,
                              child: Center(child: Text("TaxiMate Cash",style: TextStyle(color: Colors.white),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("\$53154.55",style: TextStyle(color: constantColors.primaryButtonColor,fontSize: 40,fontWeight: FontWeight.bold)),
                            ),
                            Text("Autorefill is off"),
                            SizedBox(height: 30,),
                            ElevatedButton.icon(
                              icon: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                    primary: constantColors.greenColor),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 15.0),
                                  child: Text("ADD FUNDS"),
                                )),

                          ],
                        ),
                      ),
                ),
                  )
              )
            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
