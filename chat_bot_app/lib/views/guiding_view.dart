import 'package:chat_bot_app/themes/chat_color_theme.dart';
import 'package:chat_bot_app/themes/chat_text_styles.dart';
import 'package:flutter/material.dart';

class GuidingView extends StatelessWidget {
  const GuidingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "You AI Assistant",
              style: ChatTextStyles.bold24(color: ChatColorTheme.primaryColor),
            ),

            Text(
              "Using this software,you can ask youquestions and receive articles usingartificial intelligence assistant",
              style: ChatTextStyles.medium15(),
            ),

            Image.asset("assets/images/guidImage.png"),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [Text("Continue"), Icon(Icons.arrow_forward)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
