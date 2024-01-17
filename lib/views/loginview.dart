import 'package:flutter/material.dart';
import 'Formview.dart';
import 'package:mentalhealth/models/button.dart';
import 'package:mentalhealth/views/signup.dart';
import 'package:mentalhealth/widgets/signinwithgoogle.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 60),
           const Text(
              "Sign in",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
           const Text("Login to your account",
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(height: 60),
            Padding(
            padding:const EdgeInsets.only(left: 12,right:120),
            child:GoogleSignInButton(
              onPressed: () {
                // Handle Google Sign-In
              },
            )),
            SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Text("Enter Email or username",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
            ),
            TextForm(hintText: "Email"),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Text("Enter password",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
            ),
            TextForm(hintText: "Password"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the forgot password page
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xff4285F4)),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 10),
            Button(
              buttonColor: Color(0xff4CAF50),
              buttonText: 'Sign in',
              textColor: Colors.white,
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return Signup();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(color: Color(0xff4CAF50)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
