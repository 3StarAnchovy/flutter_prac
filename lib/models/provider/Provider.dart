import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Store1 extends ChangeNotifier {
  var name = 'john kim';
  void changeName() {
    name = 'john park';
    notifyListeners();
  }

  var followerCnt = 0;
  bool flag = false;

  var profileImages = [];

  getData() async {
    var result = await http.get(
      Uri.parse('https://codingapple1.github.io/app/profile.json'),
    );
    profileImages = jsonDecode(result.body);
    print(result.body);
    notifyListeners();
  }

  void countFollower() {
    if (!flag) {
      followerCnt++;
      flag = true;
    } else {
      followerCnt--;
      flag = false;
    }
    notifyListeners();
  }
}

class Store2 extends ChangeNotifier {
  var name = 'test';
}

/*
1. store 만들고
2. store 쓸 위젯들 등록
3. store에 있던거 쓸때는 context.watch<AA>().이름
*/
