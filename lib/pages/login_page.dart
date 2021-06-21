import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

bool checkedValue = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 75.0),
                    child: Text(
                      "JobsPeso",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              width: 600,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 30.0),
                    child: Text(
                      "Candidate Login",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 15.0),
                    child: Text(
                      "Find jobs matching your salary",
                      style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.0, top: 15.0),
                    width: 500,
                    height: 35,
                    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(3.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Login with Google",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 10.0),
                    child: Text("It's fast and easy. We'll never post anything without your permission"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Divider(color: Colors.grey[500],),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "OR",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[500]),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Divider(color: Colors.grey[500],),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.0, top: 5.0, bottom: 15.0),
                    width: 500,
                    height: 35,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          labelText: "Email or ID",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.0),
                    width: 500,
                    height: 35,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0, ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.redAccent,
                              value: checkedValue,
                              onChanged: (newValue) {
                                setState(() {
                                  checkedValue = newValue;
                                });
                              },
                            ),
                            SizedBox(width: 10.0,),
                            Text("Remember me", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Row(children: [InkWell(onTap: () {},child: Text("Forgot?", style: TextStyle(fontSize: 16),))],)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.0, top: 15.0),
                    width: 500,
                    height: 35,
                    decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(3.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Login in",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white, ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("New User? ", style: TextStyle(fontSize: 16),),
                      InkWell(onTap: () { Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpPage())); }, child: Text("Sign up FREE Now"),)
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: Row(
                      children: [
                        Expanded(child: Text(" By connecting to Google, I have read and agreed to JobsPeso.com Terms of User and Privacy Policy.", maxLines: 2, overflow: TextOverflow.ellipsis, ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
