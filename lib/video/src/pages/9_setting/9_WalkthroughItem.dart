import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

List<Map<String, Object>> WALKTHROUGH_ITEMS = [
  {
    'image': 'assets/1_screen_start.png',
    'button_text': '계속하기',
  },
  {
    'image': 'assets/2_screen_login.png',
    'button_text': '계속하기',
  },
  {
    'image': 'assets/hedgehog.jpeg',
    'button_text': '계속하기',
  },
  {
    'image': 'assets/oral_structure 2.png',
    'button_text': '끝마치기',
  }
];


class WalkthroughItem extends StatefulWidget {
  final index;
  final totalItem;
  final controller;
  final Map<String, dynamic>? item;

  const WalkthroughItem(
      {Key? key, this.controller, this.index, this.totalItem, this.item})
      : super(key: key);

  @override
  _WalkthroughItemState createState() => _WalkthroughItemState();
}

class _WalkthroughItemState extends State<WalkthroughItem> {
  @override
  Widget build(BuildContext context) {
    Color selectedColor = Colors.blue;
    Color normalColor = Colors.grey;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Color.fromRGBO(11, 50, 118, 1),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.item!['image'] ?? ''),
                fit: BoxFit.fill),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            onTap: () async {
              if ((widget.index + 1) == widget.totalItem) {
                Navigator.of(context).pop();
              } else {
                await widget.controller.animateToPage(
                  widget.index + 1,
                  curve: Curves.easeIn,
                  duration: Duration(milliseconds: 200),
                );
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 52,
              margin: EdgeInsets.only(top: 30, bottom: 60, left: 30, right: 30),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
              decoration: BoxDecoration(
                color: Color.fromRGBO(28, 75, 169, 1),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(11, 50, 118, 0.6),
                    blurRadius: 40,
                    spreadRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Text(
                widget.item!['button_text'] ?? 'Continue',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16+size),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height*0.8, left: width*0.4),
          child: Container(
            height: 8,
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: (widget.index == 0) ? selectedColor : normalColor,
                  type: MaterialType.circle,
                  child: Container(width: 8, height: 8),
                ),
                Material(
                  color: (widget.index == 1) ? selectedColor : normalColor,
                  type: MaterialType.circle,
                  child: Container(width: 8, height: 8),
                ),
                Material(
                  color: (widget.index == 2) ? selectedColor : normalColor,
                  type: MaterialType.circle,
                  child: Container(width: 8, height: 8),
                ),
                Material(
                  color: (widget.index == 3) ? selectedColor : normalColor,
                  type: MaterialType.circle,
                  child: Container(width: 8, height: 8),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
