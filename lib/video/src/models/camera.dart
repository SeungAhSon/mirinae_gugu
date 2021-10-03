import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mirinae_gugu/video/src/pages/Video_0_01.dart';


//List<CameraDescription> cameras = List.empty(growable: true);
// class camera extends StatelessWidget {
//   const camera({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'My Flutter Camera',
//       home: CameraApp(),
//     );
//   }
// }

class CameraApp extends StatefulWidget {
  const CameraApp({Key? key}) : super(key: key);

  @override
  _CameraAppState createState() => _CameraAppState();
}


class _CameraAppState extends State<CameraApp> {
  CameraController controller =
  CameraController(cameras[1], ResolutionPreset.max);

  @override
  void initState() {
    super.initState();
    controller.initialize().then((_) {

      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Stack(
      children: [
        CameraPreview(controller),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: (MediaQuery.of(this.context).size.height - 255) / 2,
            ),

            Container(
              height: (MediaQuery.of(this.context).size.height - height2 - MediaQuery.of(this.context).padding.top) * 0.39,
            ),
            Container(
              color: Colors.white,
              height: (MediaQuery.of(this.context).size.height - 255) / 3,
            ),
          ],
        )
      ],
    );
  }
}