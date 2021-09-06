import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Image(image: AssetImage("assets/images/settings.png")),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: constantColors.primaryButtonColor),
                onPressed: () {
                  //  showAlertDialog(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Review()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 15.0),
                  child: Text("Update Settings"),
                )),
            SizedBox(height: 15,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: constantColors.redColor),
                onPressed: () {
                  //  showAlertDialog(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Review()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  child: Text("END SOS"),
                )),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
