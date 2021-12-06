import 'package:flutter/material.dart';

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
    return Container(
      color: Color.fromRGBO(11, 50, 118, 1),
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.item!['image'] ?? ''),
                fit: BoxFit.fill),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
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
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
