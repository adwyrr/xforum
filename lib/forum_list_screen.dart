import 'package:flutter/material.dart';

class ForumListScreen extends StatefulWidget {
  @override
  _ForumListScreenState createState() => _ForumListScreenState();
}

class _ForumListScreenState extends State<ForumListScreen> {
  List<String> postTitles = []; // 后续替换为真实的帖子数据

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forum List'),
      ),
      body: ListView.builder(
        itemCount: postTitles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(postTitles[index]),
            onTap: () {
              // 后续添加点击进入帖子详情页的逻辑
            },
          );
        },
      ),
    );
  }
}