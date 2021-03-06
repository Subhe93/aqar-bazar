import 'package:aqar_bazar/screens/Landing_and_Home/new_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../Landing_and_Home/Home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextStyle defaultStyle = TextStyle(
    color: Colors.grey,
  );
  TextStyle linkStyle = TextStyle(color: Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 0.8,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 4, blurRadius: 5),
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0.0,
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            _socialMediaButtons(),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "OR",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: inputDecoration()
                                        .copyWith(hintText: "Full Name"),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    decoration: inputDecoration()
                                        .copyWith(hintText: "Email"),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: inputDecoration()
                                        .copyWith(hintText: "Password"),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    decoration: inputDecoration()
                                        .copyWith(hintText: "Repeat Passowrd"),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  RaisedButton.icon(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          vertical: 10),
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (_) => NewHome()),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.person_add,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        "Sign Up",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: Colors.lightBlue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            "By clicking On the Button above you agree to our "),
                    TextSpan(
                      text: "terms of services",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(text: " and that you have read or "),
                    TextSpan(
                      text: "Privace Policy",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Already have an account? "),
                      TextSpan(
                        text: "Log in",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration inputDecoration() {
    return InputDecoration(
      fillColor: Colors.grey[200],
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[400], width: 0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue[600], width: 0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}

class _socialMediaButtons extends StatelessWidget {
  const _socialMediaButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignInButton(
          Buttons.Facebook,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          mini: true,
          text: 'FaceBook',
          onPressed: () {},
        ),
        SizedBox(
          width: 8,
        ),
        SignInButton(
          Buttons.Twitter,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          mini: true,
          text: 'FaceBook',
          onPressed: () {},
        ),
        SizedBox(width: 8),
        SignInButton(
          Buttons.LinkedIn,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          mini: true,
          text: 'FaceBook',
          onPressed: () {},
        ),
      ],
    );
  }
}
