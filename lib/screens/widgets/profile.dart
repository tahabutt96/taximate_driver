import 'package:flutter/material.dart';
import 'package:taximate_driver/costants/constantcolors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ConstantColors constantColors = ConstantColors();
  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Driver Profile",
          style: TextStyle(color: constantColors.darkFontColor),
        ),
        centerTitle: true,
        backgroundColor: constantColors.lightColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: constantColors.darkFontColor,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                color: constantColors.primaryColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: constantColors.primaryButtonColor,
                            child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.camera_alt_outlined),
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("Minhaj",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(

                              color: constantColors.primaryButtonColor,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("TRIPS",style: TextStyle(color: constantColors.lightColor),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                height: 20,
                                child: Text("4859"),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(

                              color: constantColors.primaryButtonColor,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("RATING",style: TextStyle(color: constantColors.lightColor),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                height: 20,
                                child: Text("4.99"),
                              ),
                            ),

                          ],
                        )
                      ],
                    )
                  ],
                ),

              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.language),
                  title: Text("Knows English & Urdu"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Container(
                  child: TextFormField(
                    controller: _username,
                    // validator: (value) {
                    //   if (value!.isEmpty || !value.contains('@')) {
                    //     return 'Please enter a valid email.';
                    //   }
                    //   return null;
                    // },
                    //autofocus: true,
                    textInputAction: TextInputAction.next,
                    //focusNode: _emailFocus,
                    //onFieldSubmitted: (term) {
                    //  FocusScope.of(context).requestFocus(_passwordFocus);
                    //  },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                       border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                        ),
                        labelText: "Companys Car",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Container(
                  child: TextFormField(
                    controller: _email,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                        ),
                        labelText: 'Models Year',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Container(
                  child: TextFormField(
                    controller: _phone,
                    // validator: (value) {
                    //   if (value!.isEmpty || !value.contains('@')) {
                    //     return 'Please enter a valid email.';
                    //   }
                    //   return null;
                    // },
                    //autofocus: true,
                    textInputAction: TextInputAction.next,
                    //focusNode: _emailFocus,
                    //onFieldSubmitted: (term) {
                    //  FocusScope.of(context).requestFocus(_passwordFocus);
                    //  },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                        ),
                        labelText: 'Cars Model',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right:30,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 200,
                      child: TextFormField(
                        enabled: false,
                        controller: _username,
                        // validator: (value) {
                        //   if (value!.isEmpty || !value.contains('@')) {
                        //     return 'Please enter a valid email.';
                        //   }
                        //   return null;
                        // },
                        //autofocus: true,
                        textInputAction: TextInputAction.next,
                        //focusNode: _emailFocus,
                        //onFieldSubmitted: (term) {
                        //  FocusScope.of(context).requestFocus(_passwordFocus);
                        //  },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                            ),
                            labelText: 'Document Uploaded',
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: constantColors.primaryButtonColor),
                        onPressed: () {
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15.0),
                          child: Text("Upload"),
                        )),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: constantColors.primaryButtonColor),
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80.0, vertical: 15.0),
                    child: Text("UPDATE PROFILE"),
                  )),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
