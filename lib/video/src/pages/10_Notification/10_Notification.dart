import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirinae_gugu/video/src/components/constant.dart';
import 'package:mirinae_gugu/video/src/pages/10_Notification/NotificationTiles.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/9_setting/9_Walkthrough.dart';

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
      appBar: DefaultAppBar(title: '공지사항'),
      body: ListView(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(height: 0.5),
          Divider(color: Colors.white, thickness: 0.8),
          NotificationTiles(
            title: '1.0.0+8 수정사항입니다.',
            content:
                '\n일부 피드백을 반영하였습니다.\n'
                    '\n전면 카메라 on/off 기능을 추가하였습니다.\n'
            '\n오류 신고 및 문의는 jaewan0114@naver.com으로 부탁드립니다.\n'
            '\n행복 가득한 새해되세요.\n\n',
            date: '2022.01.25',
            enable: true,
          ),
          kDivider,
          NotificationTiles(
            title: '1.0.0+5 수정사항입니다.',
            content:
            '\n현재 소수의 비정상적인 종료를 확인하였습니다. \n'
                '\n테스트 결과, 앱 사용에는 큰 문제가 없으며 비정상 종료 역시 실제로 확인되지 않고 로그에 기록만 남아있는 상황입니다.\n'
                '\n비정상적인 종료는 플러터 플러그인 문제로 확인되었습니다. 현재 버전을 수정하여 조치를 취했습니다.\n'
                '\n또한, 이전에 문제가 있던 폰트가 변경되었습니다.\n'
                '\n오류 신고 및 문의는 jaewan0114@naver.com으로 부탁드립니다.\n'
                '\n행복 가득한 새해되세요.\n\n',
            date: '2022.01.14',
            enable: true,
          ),
          kDivider,
          NotificationTiles(
            title: '안녕하세요 개발자입니다.',
            content:
            '\n이 앱은 현대오토에버와 서울사회복지공동모금회가 지원하는 배리어프리 앱 개발 콘테스트의 출품작입니다.\n'
                '\n현재 9,10,11,12단원의 낱말학습 부분과 복습 시험의 일부는 유튜브 일일 업로드 제한으로 인해 추후 따로 업데이트될 예정입니다.\n'
                '\n오류 신고 및 문의는 jaewan0114@naver.com으로 부탁드립니다.\n'
                '\n행복 가득한 새해되세요.\n\n',
            date: '2022.01.02',
            enable: true,
          ),
          kDivider,
          ListTile(
            title: Semantics(
            label: "제목",
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('사용 방법 소개', style: TextStyle(color: Color(0xFF303030), fontSize:18.sp+size, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text('2022.01.01', style: TextStyle(color: Colors.grey, fontSize:14.sp+size,)),
              ],
            )),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,size: 15,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WalkthroughScreen()));
            },
          ),
          kDivider,
        ],
      ),
    );
  }
}
