import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final action;
  const DefaultAppBar({
    Key? key, required this.title, this.action,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 3.0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.blue),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: action,
    );
  }
}