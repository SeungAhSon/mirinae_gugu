import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/app.dart';

class Home extends StatelessWidget{
  static const PrimaryColor1 = const Color(0xFF5DB6F8);
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){

    return SafeArea(
      child: Scaffold(
        body: WillPopScope(    // <- Scaffold body만 감싼다.
          child: Center(
          ),
          onWillPop: () {

            return Future(() => false);
          },
        ),
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
                iconSize: 22,
                icon: Icon(Icons.arrow_back),

         ),

          actions: <Widget>[IconButton(
            icon: Icon(Icons.bookmark_outline),
              iconSize: 22,
              color: Colors.black,
              onPressed: () {
              print('shopping cart button is clicked');
              }
            ),
          ],
         ),
        ),
      );
      // CustomScrollView(slivers: [
      //       (
      //         backgroundColor: Colors.white,
      //         expandedHeight: 80,
      //         title: Container(
      //           child: Text("AppBar"),
      //
      //         ),
      //       ),
      //       SliverList(delegate: SliverChildBuilderDelegate(
      //           (context, index){
      //             return Padding(
      //                 padding:const EdgeInsets.all(8.0),
      //                 child: Container(height: 300,color: Colors.grey,),
      //             );
      //
      //           },
      //         childCount: 10,
      //       ),
      //       ),
      //     ],



  }
}