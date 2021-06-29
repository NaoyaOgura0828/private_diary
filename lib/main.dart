import 'package:flutter/material.dart';
import 'package:private_diary/screens/auth.dart';


void main() => runApp(PrivateDiary());

class PrivateDiary extends StatelessWidget {
  const PrivateDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '日記投稿アプリ',
      theme: ThemeData.dark(),
      home: Login(),
    );
  }
}
