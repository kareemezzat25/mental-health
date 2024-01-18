import 'package:flutter/material.dart';
import 'package:mentalhealth/widgets/CommonDrawer.dart';
import 'CreateForum.dart';
import 'PostComment.dart';

class ForumsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mentality',style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Forums'),
              Tab(text: 'Create Forum'),
              Tab(text: 'Post Comment'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ForumsContent(),
            CreateForum(),
            PostComment(),
          ],
        ),
      ),
    );
  }
}

class ForumsContent extends StatelessWidget {
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
