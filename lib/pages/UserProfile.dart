import 'package:flutter/material.dart';
import 'package:flutter_dev/models/provider/Provider.dart';
import 'package:provider/provider.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    var profileImages = context.watch<Store1>().profileImages;
    return Scaffold(
      appBar: AppBar(title: Text(context.watch<Store1>().name)),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ProfileHeader()),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (c, i) => Image.network(profileImages[i]),
              childCount: profileImages.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.circle, size: 60),
        Text('팔로워 ${context.watch<Store1>().followerCnt} 명'),
        ElevatedButton(
          style: ButtonStyle(),
          onPressed: () {
            context.read<Store1>().countFollower();
          },
          child: Text('팔로우'),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<Store1>().getData();
            //profileImages.forEach(action)
          },
          child: Text('사진불러오기'),
        ),
      ],
    );
  }
}
