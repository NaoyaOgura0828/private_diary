import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_diary/screens/diary_list.dart';

class DiaryCreate extends StatefulWidget {
  @override
  _DiaryCreateState createState() => _DiaryCreateState();
}

class _DiaryCreateState extends State<DiaryCreate> {
  TextEditingController titleControler = TextEditingController(); // タイトル用コントローラー
  TextEditingController bodyTextController = TextEditingController(); // 本文用コントローラー
  final picker = ImagePicker();
  File? _image;

  Future getImageFromGallery() async {
    /* ギャラリーから画像を取得 */
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日記作成'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'タイトル',
              ),
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: titleControler,
            ),
            const SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '内容',
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              style: TextStyle(fontSize: 20.0),
              controller: bodyTextController,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 100,
                        child: _image == null
                            ? Text('写真を選んで下さい')
                            : Image.file(_image!)),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: getImageFromGallery,
                  child: Icon(Icons.photo_library),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DiaryList(),
                        )
                    );
                  }, // TODO 日記一覧画面に遷移 diary_list
                  child: Text(
                    '登録',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
