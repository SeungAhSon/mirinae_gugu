import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/10_Notification/NotificationPage.dart';
import 'package:mirinae_gugu/video/src/components/constant.dart';
bool temp = true;
Color temp_color = Colors.white;

class NotificationTiles extends StatelessWidget {
  final String title, content, date;
  final bool enable;


  const NotificationTiles({
    Key? key,
    required this.title,
    required this.content,
    required this.date,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(temp){temp_color = Colors.white;}
    else{temp_color = Colors.grey;}
    return Container(
      color: Colors.white,
      child:
    ListTile(
      //leading: Container(color: Colors.blue, child:Text('중요')),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Color(0xFF303030), fontSize:17, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(date, style: TextStyle(color: Colors.grey, fontSize:14,)),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,size: 15,),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotificationPage(
              title: this.title, content: this.content, date: this.date))),
      enabled: enable,
    )
    );
  }
}
