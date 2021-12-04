import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/3_home.dart';

class WalkthroughItem extends StatefulWidget {
  final index;
  final totalItem;
  final controller;
  final Map<String, dynamic>? item;

  const WalkthroughItem({Key? key, this.controller, this.index, this.totalItem, this.item}) : super(key: key);

  @override
  _WalkthroughItemState createState() => _WalkthroughItemState();
}

class _WalkthroughItemState extends State<WalkthroughItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(11, 50, 118, 1),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.index == 0 ? [
                Container(
                    child: Image.asset(widget.item!['image'] ?? '', width: 300)
                ),
              ] : [
                Container(
                    child: Image.asset(widget.item!['image'] ?? '', width: 300)
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              onTap: () async {
                if ((widget.index+1) == widget.totalItem) {
                  Navigator.of(context).pop();
                } else {
                  await widget.controller.animateToPage(widget.index + 1, curve: Curves.easeIn,duration: Duration(milliseconds: 200),);
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
                      fontSize: 16
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}