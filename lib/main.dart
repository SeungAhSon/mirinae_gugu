import 'package:flutter/material.dart';
import 'package:gugujeoljeol/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomePage(title: '구구절절'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [SamplePage(), StudyPage(), RecordPage(), AboutPage()];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onTap,
            currentIndex: _currentIndex,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('MY'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                title: Text('학습'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.mic),
                title: Text('녹음'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                title: Text('더보기'),
                //chat
              )
            ]));
  }
}