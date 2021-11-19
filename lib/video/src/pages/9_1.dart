

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/screens/old_mail.dart';

class fontchoose extends StatefulWidget{
  fontchoose({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _fontchoose createState() => _fontchoose();
}
class _fontchoose extends State<fontchoose>{


  String? FontChoose;
  List listFont = ["10","11","12","13","14","15"];

  @override
  void initState() {
    super.initState();
    FontChoose = listFont[0];
  }

  @override


  @override
  Widget build(BuildContext context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                padding: EdgeInsets.only(left:16,right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(10)
                ),
            child: DropdownButton(
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    value: FontChoose,
                    onChanged: (newValue) {
                      setState((){
                        FontChoose = newValue as String?;
                      });
                    },
                  items: listFont.map((valueItem) {
                      return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                      );
                }).toList(),

            ),
              )
    ),
          );
  }
}


