import 'package:flutter/material.dart';
import 'config/theme/app_theme.dart';
import 'presentation/chat/chat_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:1).theme(),
      home: const ChatScreen(),
    );
  }
}
