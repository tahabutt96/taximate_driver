import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taximate_driver/screens/ride/ridecoming.dart';
import 'package:taximate_driver/screens/widgets/messages.dart';

class Ontheway extends StatefulWidget {
  const Ontheway({Key? key}) : super(key: key);

  @override
  _OnthewayState createState() => _OnthewayState();
}

class _OnthewayState extends State<Ontheway> {
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Rideiscoming()));
  }

  @override
  void initState() {
    super.initState();
    showRelevant();
  }
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "On the way",
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
      body: SingleChildScrollView(
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
                    height: MediaQuery.of(context).size.height / 1.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: constantColors.lightColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 100,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor:
                                        constantColors.primaryColor,
                                  )),

                              Container(
                                width: 130,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text("Farhan Khan"),
                                      subtitle: Text("Karachi, Sindh"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Container(
                                        child: RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          ignoreGestures: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Divider(
                          color: constantColors.darkColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Car's Model"),
                                Text("Cultus 2019",style: TextStyle(
                                  fontSize: 20
                                ),),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: constantColors.darkColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Car's Number"),
                                Text("414-305",style: TextStyle(
                                    fontSize: 20
                                )),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: constantColors.darkColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Passanger"),
                                Text("04",style: TextStyle(
                                    fontSize: 20
                                )),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: constantColors.darkColor,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.blueColor),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 120.0, vertical: 15.0),
                              child: Text("MESSAGE"),
                            )),
                        SizedBox(height: 15),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.redColor),
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Waiting()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60.0, vertical: 15.0),
                              child: Text("CANCLE"),
                            )),
                      ],
                    ),
                  )
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
