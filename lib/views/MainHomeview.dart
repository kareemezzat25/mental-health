import 'package:flutter/material.dart';
import 'package:mentalhealth/widgets/CommonDrawer.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Mentality",
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: CommonDrawer(),
    );
  }
}
