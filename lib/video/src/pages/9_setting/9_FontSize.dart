

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/screens/old_mail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> {
  int? _changeFontSize;
  final List<int> _fontSizeList = [10, 11,12,13,14,15];

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      //Retrieving font size
      getFontSize().then((value) => setState(() {
        _changeFontSize = value as int?;
      }));
    });
    super.initState();
  }

  // void addDefaultValueToSharedPreferences() async {
  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   await sharedPreferences.setInt('fontsize', 10);
  // }
  Future<int?> getFontSize() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt('fontsize');
  }

  Future<void> updateFontSize(int updatedSize) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt('fontsize', updatedSize);
    print(updatedSize);
  }



  @override
  Widget build(BuildContext context) {
    print(_changeFontSize);
    return Center(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.only(bottom: 3),
                child: ListTile(
                  title: Text("Font Size"),
                  trailing: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: false,
                      value: _changeFontSize,
                      items: _fontSizeList.map((myFontSize) {
                        return DropdownMenuItem(
                          child: Text(myFontSize.toString()),
                          value: myFontSize,
                        );
                      }).toList(),
                      onChanged: (value) async {
                        setState(() {
                          _changeFontSize = value as int?;
                        });
                        //Updating font size
                        await updateFontSize(value as int);
                      },
                      hint: Text("Select FontSize"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}