import 'package:flutter/material.dart';
import 'package:private_diary/screens/authy.dart';
import 'package:private_diary/screens/diary_create.dart';


void main() async {
  runApp(SharedDiary());
}

class SharedDiary extends StatelessWidget {
  const SharedDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '日記投稿アプリ',
      theme: ThemeData.dark(),
      //home: Login(),
      home: DiaryCreate(), // デバッグ用
    );
  }
}
