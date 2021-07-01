import 'package:flutter/material.dart';

class DiaryDetail extends StatefulWidget {
  @override
  _DiaryDetailState createState() => _DiaryDetailState();
}

class _DiaryDetailState extends State<DiaryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日記詳細'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('日付'), // TODO 日付を読み込む
              Text('タイトル'), // TODO タイトルを読み込む
              Text('内容'), // TODO 内容を読み込む
              Text('写真'), // TODO 写真を読み込む
              ElevatedButton(
                  onPressed: () => null, // TODO 日記一覧画面に遷移 diary_list
                  child: Text(
                    '一覧に戻る',
                    style: TextStyle(fontSize: 15.0),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
