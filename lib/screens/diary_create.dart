import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DiaryCreate extends StatefulWidget {
  @override
  _DiaryCreateState createState() => _DiaryCreateState();
}

class _DiaryCreateState extends State<DiaryCreate> {
  TextEditingController titleControler = TextEditingController();
  TextEditingController bodyTextController = TextEditingController();
  final picker = ImagePicker();
  File _image; // import 'dart:io' 失敗している？

  Future getImageFromGallery() async {
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
      body: Container(
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
                        width: 300,
                        child: _image == null
                            ? Text('写真を選んで下さい')
                            : Image.file(_image)),
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
                  onPressed: () => null, // TODO 日記一覧画面に遷移 diary_list
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
