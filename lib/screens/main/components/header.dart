import 'package:cycloxx/screens/main/components/social.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controller/menucontroller.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kGreenColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      SvgPicture.asset("assets/icons/default-monochrome.svg",height: 18,width: 18, fit: BoxFit.scaleDown,),
                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // Socal
                      Socal(),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  Text(
                    "innovation & sustainability",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Syncopate'
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      "Stay updated with the newest design and development stories, case studies, \nand insights shared by cycloxx Team.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Syncopate',
                        fontSize: 15,
                        height: 1.5,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Our Newsletter",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Syncopate',
                                fontSize: 8
                            ),
                          ),
                          SizedBox(width: kDefaultPadding / 2),
                          Icon(
                            Icons.arrow_forward,size: 20,
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
