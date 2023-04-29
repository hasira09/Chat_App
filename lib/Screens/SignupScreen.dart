import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'SignupScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Signup Page"),
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
                  onPressed: () {},
                  child: Text("Sign - Up"),
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
                  icon:
                  Image.asset("assets/Google.png", width: 30, height: 30),
                  label: Text(" Sign up with Google",
                      style: TextStyle(color: Colors.black)),
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
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
                  label: Text(" Sign up with Facebook",
                      style: TextStyle(color: Colors.black)),
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Already Have an Account? Login"),
            ],
          ),
        ),
      ),
    );
  }
}
