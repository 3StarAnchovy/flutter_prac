import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dev/models/dto/post.dart';

class Upload extends StatefulWidget {
  const Upload({super.key, required this.image, required this.insertPost});

  final image;
  final Function insertPost;

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(widget.image);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.file(File(widget.image)),
          TextField(controller: textController),
          IconButton(
            onPressed: () {
              print(textController.text);

              Post post = Post(
                id: 1,
                image: widget.image,
                likes: 0,
                date: '20231111',
                content: textController.text,
                liked: false,
                user: '해윙',
              );

              widget.insertPost(post);

              Navigator.pop(context);
            },
            icon: Icon(Icons.upload_rounded),
          ),
        ],
      ),
    );
  }
}
