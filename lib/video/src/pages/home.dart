import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

          backgroundColor: Colors.white,
          title: Text('구구절절',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
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
          body: ListView.builder(
            padding: const EdgeInsets.all(1),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                },
                child: VideoWidget(),
              );
            },
              ),

          ),


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