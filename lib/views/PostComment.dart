import 'package:flutter/material.dart';
import 'package:mentalhealth/widgets/CommonDrawer.dart';

class PostComment extends StatelessWidget {
  const PostComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:const Text('Forums',style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
      ),
      drawer: CommonDrawer(),
      body: const Center(
        child: Text('Forums Page Content'),
      ),
    );
  }
}