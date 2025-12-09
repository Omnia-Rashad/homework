import 'package:chat_bot_app/themes/chat_color_theme.dart';
import 'package:flutter/material.dart';

class LogoView extends StatelessWidget {
  const LogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ChatColorTheme.primaryColor,
      body: Center(child: Image.asset('assets/images/logo.png')),
    );
  }
}
