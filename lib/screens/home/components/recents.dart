import 'package:flutter/material.dart';
import '../../constants.dart';
import 'sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Blogs",
      child: Column(
        children: [
          RecentPostCard(
            image: "assets/images/recent_1.png",
            title: "Our “Secret” to modular manufacturing",
            press: () {},
          ),
          SizedBox(height: kDefaultPadding),
          RecentPostCard(
            image: "assets/images/recent_2.png",
            title: "Agro Innovation in the heart of West Africa",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;

  const RecentPostCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "assets/fonts/Syncopate/Syncopate-Regular.ttf",
                  color: kGreenColor,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
