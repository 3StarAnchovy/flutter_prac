import 'package:flutter/material.dart';
import 'package:flutter_dev/models/post.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key, required this.posts});
  final List<Post> posts;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    var p = widget.posts;
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: p.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Container(child: Image.network(p[i].image)),
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
