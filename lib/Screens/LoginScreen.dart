import 'package:flutter/material.dart';

import '../MainScreens/BottomNav.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 20),
              Image.asset("assets/Logo.png", width: 120),
              Container(height: 70),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter Username",
                    prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 230,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text("Log - In", style: TextStyle(fontSize: 17)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/line.png"),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 230,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset("assets/Google.png", width: 30, height: 30),
                  label: Text(" Login with Google",
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: 230,
                child: TextButton.icon(
                  onPressed: () {},
                  icon:
                      Image.asset("assets/Facebook.png", width: 30, height: 30),
                  label: Text(" Login with Facebook",
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text("Don't Have an Account? Signup",
                      style: TextStyle(fontSize: 15))),
            ],
          ),
        ),
      ),
    );
  }
}
