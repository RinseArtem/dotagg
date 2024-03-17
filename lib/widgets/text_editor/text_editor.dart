import 'package:dotagg/widgets/text_editor/text_editor_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextEditor extends StatefulWidget {
  const TextEditor({super.key});

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  final TextEditorController _widgetController = TextEditorController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuillToolbar(
              configurations: const QuillToolbarConfigurations(
                buttonOptions: QuillSimpleToolbarButtonOptions(
                  base: QuillToolbarSearchButtonOptions(

                  )
                ),
              ),
              child: Wrap(
                children: [
                  QuillToolbarToggleStyleButton(
                    options: const QuillToolbarToggleStyleButtonOptions(
                    ),
                    controller: _widgetController.quillController,
                    attribute: Attribute.bold,
                  )
                ],
              ),
            ),
            // QuillToolbar.simple(
            //   configurations: QuillSimpleToolbarConfigurations(
            //     showAlignmentButtons: false,
            //     showCenterAlignment: false,
            //     showClearFormat: false,
            //     showInlineCode: false,
            //     showIndent: false,
            //     showSubscript: false,
            //     showSuperscript: false,
            //     showListBullets: false,
            //     showListCheck: false,
            //     showListNumbers: false,
            //     showBackgroundColorButton: false,
            //     showColorButton: false,
            //     showUndo: false,
            //     showRedo: false,
            //     showSearchButton: false,
            //     customButtons: [
            //       QuillToolbarCustomButtonOptions(
            //         onPressed: () {
            //
            //         },
            //         icon: Icon(Icons.emoji_emotions)
            //       )
            //     ],
            //
            //     controller: _screenController.quillController,
            //     sharedConfigurations: const QuillSharedConfigurations(
            //       dialogTheme: QuillDialogTheme(
            //         dialogBackgroundColor: Colors.white,
            //         isWrappable: false
            //       ),
            //       locale: Locale('ru'),
            //     ),
            //   ),
            // ),
            Container(
              padding: const EdgeInsetsDirectional.all(8),
              constraints: BoxConstraints.loose(Size.infinite),
              decoration: BoxDecoration(
                // color: Color(0xffB6B6B6),
                border: Border(
                  top: BorderSide(
                    color: Color(0xff5D5C64).withOpacity(.35)
                  )
                )
              ),
              child: QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  textInputAction: TextInputAction.continueAction,
                  controller: _widgetController.quillController,
                  readOnly: false,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('ru'),
                  ),
                ),
              ),
            ),
            TextFormField()
          ],
        ),
      ),
    );
  }
}
