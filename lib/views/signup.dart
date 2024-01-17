import 'package:flutter/material.dart';
import 'loginview.dart';
import 'Formview.dart';
import 'package:mentalhealth/models/button.dart';
class Signup extends StatelessWidget {
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
            const Column(
              children: [
                SizedBox(height: 60),
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Create an account, it's free",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Text(
                    "Enter username or Email address",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            // TextForm(hintText: "user name or Email"),
            TextForm(hintText: "user name or Email"),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text(
                          "Enter user name",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      TextForm(hintText: "user name"),
                    ],
                  ),
                ),
                SizedBox(width: 15), // Add some space between the fields
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text(
                            "Enter contact number",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ),
                        TextForm(hintText: "contact number"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Text(
                    "Enter password",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            TextForm(hintText: "password"),
            SizedBox(height: 30),
            Button(
              buttonColor: Color(0xff4CAF50),
              buttonText: 'SignUp',
              textColor: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Login();
                      
                      }));
                    },
                    child: Text(
                      " Sign in",
                      style: TextStyle(color: Color(0xff4CAF50)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}