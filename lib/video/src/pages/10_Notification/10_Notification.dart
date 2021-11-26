import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/constant.dart';
import 'package:mirinae_gugu/video/src/pages/10_Notification/NotificationTiles.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/components/DefaultBackButton.dart';

class Notific extends StatefulWidget {
  Notific({Key? key}) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notific> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: '공지사항',
        child: DefaultBackButton(),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          NotificationTiles(
            title: '안녕하세요',
            content:
                '안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요',
            date: '2021.02.02',
            enable: true,
          ),
          kDivider,
          NotificationTiles(
            title: '감사해요',
            content:
                '감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요감사해요',
            date: '2021.02.01',
            enable: true,
          ),
          kDivider,
          ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('사용 방법 소개', style: TextStyle(color: Color(0xFF303030), fontSize:17, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text('2021.01.01', style: TextStyle(color: Colors.grey, fontSize:14,)),
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,size: 15,),
            onTap: () {
              print("tapped on container");
            },
          ),
        ],
      ),
    );
  }
}
