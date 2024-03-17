import 'package:dotagg/resources/route_list.dart';
import 'package:dotagg/resources/themes/light.dart';
import 'package:dotagg/screens/new_post/new_post.dart';
import 'package:dotagg/screens/post_feed/post_feed.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DotaGG',
      theme: lightTheme(),
      initialRoute: RouteList.postsFeed,
      routes: {
        RouteList.postsFeed: (context) => const PostFeedScreen(),
        RouteList.newPost: (context) => const NewPostScreen(),
      },
    );
  }
}
