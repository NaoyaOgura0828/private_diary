import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:shared_diary/screens/authy.dart';
import 'package:shared_diary/screens/diary_create.dart';
import 'package:shared_diary/screens/diary_detail.dart';
import 'package:shared_diary/screens/diary_list.dart';

import 'package:shared_diary/test.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SharedDiary());
}

class SharedDiary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '日記投稿アプリ',
      theme: ThemeData.dark(),
      //home: Login(),
      home: DiaryCreate(), // デバッグ用
      //home: DiaryDetail(),
    );
  }
}
