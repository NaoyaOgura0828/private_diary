import 'package:flutter/material.dart';


class DiaryList extends StatefulWidget {
  const DiaryList({Key? key}) : super(key: key);

  @override
  _DiaryListState createState() => _DiaryListState();
}

class _DiaryListState extends State<DiaryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日記一覧'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 3 / 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50),
                // TODO カード内に日記の情報をimportする
              ],
            ),
          ),
        ),
      ),
    );
  }
}
