import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key, required this.image}) : super(key: key);

  final image;

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('이미지업로드화면'),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        ],
      ),
    );
  }
}
