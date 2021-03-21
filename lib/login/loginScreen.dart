import 'package:applicationlogin/function/auth.dart';
import 'package:applicationlogin/styles/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'landingPage.dart';

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  void initState() {
    signOut();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: containerDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            style: textStyleOne(),
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                ),
                                hintText: 'User Name',
                                hintStyle: fontTextStyle(),
                                border: InputBorder.none)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              style: textStyleOne(),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Password',
                                  hintStyle: fontTextStyle(),
                                  border: InputBorder.none))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Forgot Password',
                        style: textStyleOne(),
                      ),
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 60,
                      width: 350,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.white.withOpacity(0.15),
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: textStyleOne(),
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        child: Text('Or', style: textStyleOne()),
                        height: 20,
                        width: 160),
                    Container(
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 350,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.white.withOpacity(0.15),
                        onPressed: () {
                          signMeIn().then((mainUser) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandingPage())));
                        },
                        child: Text(
                          'Continue with Google',
                          style: textStyleOne(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
