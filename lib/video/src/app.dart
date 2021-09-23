// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:mirinae_gugu/video/src/controller/app_controller.dart';
// import 'package:mirinae_gugu/video/src/pages/home.dart';
// import 'package:mirinae_gugu/video/src/pages/Explore.dart';
// import 'package:mirinae_gugu/video/src/pages/Add.dart';
//
//
// class App extends GetView<AppController>{ //루트 경로로  만듦
//   const App({Key? key}) : super(key: key);
//   static const PrimaryColor1 = const Color(0xFF708FF8);
//
//   @override
//   Widget build(BuildContext context){
//
//     return Scaffold(
//
//       body: Obx(() {
//         switch(RouteName.values[controller.currentIndex.value]) {
//           case RouteName.Home:
//             return Home();
//             break;
//           case RouteName.Explore:
//             return Explore();
//             break;
//           case RouteName.Add:
//             return Add();
//             break;
//         }
//         return Container();
//
//       }),
//       bottomNavigationBar: Obx(
//
//             ()=> BottomNavigationBar(
//
//               type: BottomNavigationBarType.fixed,
//         currentIndex: controller.currentIndex.value,
//       showSelectedLabels: true,
//       selectedFontSize: 15,
//       selectedItemColor: Colors.black,
//       onTap: controller.changePageIndex,
//
//       items: [
//         BottomNavigationBarItem(
//             icon: SvgPicture.asset("images/asset/home_off.svg"),
//             activeIcon: SvgPicture.asset("images/asset/home_on.svg"),
//             label : "홈"),
//         BottomNavigationBarItem(
//             icon: SvgPicture.asset("images/asset/compass_off.svg",width: 22,),
//             activeIcon: SvgPicture.asset("images/asset/compass_on.svg",width: 22,),
//             label : "탐색"),
//         BottomNavigationBarItem(
//             icon: SvgPicture.asset("images/asset/plus.svg",width: 35,),
//             label: ""
//         ),
//         BottomNavigationBarItem(
//             icon: SvgPicture.asset("images/asset/subs_off.svg"),
//             activeIcon: SvgPicture.asset("images/asset/subs_on,svg"),
//             label : "구독"),
//         BottomNavigationBarItem(
//             icon: SvgPicture.asset("images/asset/library_off.svg"),
//             activeIcon: SvgPicture.asset("images/asset/library_on,svg"),
//             label : "보관함"),
//
//
//
//       ],),));
//   }
// }
