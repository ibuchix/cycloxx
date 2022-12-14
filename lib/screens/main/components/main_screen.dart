import 'package:cycloxx/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/menucontroller.dart';
import '../../constants.dart';
import '../../home/home_screen.dart';
import 'header.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}