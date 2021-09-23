import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/app.dart';
import 'package:mirinae_gugu/video/src/components/Video_appbar.dart';
import 'package:mirinae_gugu/video/src/components/Video_widget.dart';


class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          //이 부분은 상단바 반응형으로 만든거. 근데 없어도 될듯
          //toolbarHeight: MediaQuery.of(context).size.height/(14/1),
          backgroundColor: Colors.white,
          title: Text('1-1',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            iconSize: 25,
            icon: Icon(Icons.arrow_back),

          ),

          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.bookmark_outline),
                iconSize: 25,
                color: Colors.black,
                onPressed: () {
                  print('GD');
                }
            ),
          ],
        ),

          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/(30/29),), //상단 슬라이드
                child: Container(

                  height: MediaQuery.of(context).size.height/(150/1),
                  color: Colors.blue.withOpacity(0.6),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom:MediaQuery.of(context).size.height/(300/1)), //상단 슬라이드 밑에 선
                child: Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),

              //여긴 유튜브 영상
              Padding(
                padding: EdgeInsets.only(bottom: 0),//left:MediaQuery.of(context).size.width/(12/1),right: MediaQuery.of(context).size.width/(12/1),),
                child: Container(

                height: MediaQuery.of(context).size.height/(3/1),
                color: Colors.grey.withOpacity(0.5),
              ),
            ),

              SizedBox(
                height: MediaQuery.of(context).size.height/(50/1),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 0),//left:MediaQuery.of(context).size.width/(12/1),right: MediaQuery.of(context).size.width/(12/1),),
                child: Container(

                height: MediaQuery.of(context).size.height/(3/1),
                color: Colors.grey.withOpacity(0.5),
              ),
              ),
            ],
          )



)
    );
  }
}

    //     return SafeArea(
//       child: CustomScrollView
//       (slivers: [
//         SliverAppBar(
//             title: CustomAppBar(),
//             floating: true,
//             snap: true
//         ),
//         SliverList(
//           delegate: SliverChildBuilderDelegate(
//                 (context, index){
//                   return Padding(
//                       padding:const EdgeInsets.all(8.0),
//                       child: Container(height: 150,color: Colors.grey,),
//                   );
//
//                 },
//               childCount: 10,
//             ),
//             ),
//           ],
//
//     ),
// );
//   }
// }