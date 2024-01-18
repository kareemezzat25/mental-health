import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final String? hintText;
  final TextEditingController controller;
  final bool isPassword; 

  TextForm({required this.hintText,required this.controller, this.isPassword=false});

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword ? isObscure : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white),
          ),
          suffixIcon:  widget.isPassword
              ? IconButton(
                  icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
