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
          NotificationTiles(
            title: '현재까지 알려진 오류입니다.',
            content:
            '\n현재 말하기 시험에서 비정상적인 종료를 4건 확인하였습니다. \n'
                '\n확인해본 결과 플러터 플러그인 문제로, 현재 버전을 수정해 놓은 상태지만 플러그인의 문제이기 때문에 플러그인 개발자가 수정을 하기 전까지는 완벽한 해결이 불가능합니다. 주의부탁드리겠습니다.\n'
                '\n또한 일부 폰트(야체, 주야체)에서 일부 단어가 표시되지 않는 현상을 확인했습니다.\n'
                '\n이는 폰트의 문제이기 때문에, 야체와 주야체 사용을 가급적 자제 부탁드리고, 추후 업데이트를 통해 새로운 폰트를 추가하도록 하겠습니다.\n'
                '\n오류 신고 및 문의는 jaewan0114@naver.com으로 부탁드립니다.\n'
                '\n행복 가득한 새해되세요.\n\n',
            date: '2022.01.11',
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
