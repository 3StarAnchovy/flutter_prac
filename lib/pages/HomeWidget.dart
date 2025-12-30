import 'package:flutter/material.dart';
import 'package:flutter_dev/models/dto/post.dart';
import 'dart:io';

class HomeWidget extends StatefulWidget {
  HomeWidget({super.key, required this.posts, required this.addData});
  final List<Post> posts;
  final Function addData;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  //스크롤 컨트럴러
  var scroll = ScrollController();

  //두번쨰 요청
  String scdUrl = 'https://codingapple1.github.io/app/more1.json';

  @override
  void initState() {
    super.initState();

    scroll.addListener(() {
      var userDir = scroll.position.userScrollDirection;
      if (userDir == 'ScrollDirection.reverse') {}

      if (scroll.position.pixels == scroll.position.maxScrollExtent) {
        widget.addData(scdUrl);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var p = widget.posts;
    if (p.isEmpty) return Text('로딩중');
    return Container(
      child: ListView.builder(
        controller: scroll,
        scrollDirection: Axis.vertical,
        itemCount: p.length,
        itemBuilder: (context, i) {
          print(p[i].image);
          return Column(
            children: [
              Container(
                child: p[i].image.contains("http")
                    ? Image.network(p[i].image)
                    : Image.file(File(p[i].image)),
              ),
              Row(children: [Text('좋아요'), Text(p[i].likes.toString())]),
              Row(children: [Text('글쓴이'), Text(p[i].user.toString())]),
              Row(children: [Text('글내용'), Text(p[i].content.toString())]),
            ],
          );
        },
      ),
    );
  }
}
