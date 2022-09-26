import 'package:flutter/material.dart';
import '../../models/blog.dart';
import '../constants.dart';
import '../responsive.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recents.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
                  (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}