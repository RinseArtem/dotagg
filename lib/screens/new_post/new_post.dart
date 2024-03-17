import 'package:dotagg/screens/new_post/new_post_controller.dart';
import 'package:dotagg/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:dotagg/widgets/custom_bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:dotagg/widgets/text_editor/text_editor.dart';
import 'package:dotagg/widgets/text_editor/text_editor_controller.dart';
import 'package:flutter/material.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  final NewPostController _screenController = NewPostController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          TextEditor()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
