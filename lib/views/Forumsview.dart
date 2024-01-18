import 'package:flutter/material.dart';
import 'package:mentalhealth/widgets/CommonDrawer.dart';

class ForumsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Forums'),
      ),
      drawer: CommonDrawer(),
      body: const Center(
        child: Text('Forums Page Content'),
      ),
    );
  }
}
