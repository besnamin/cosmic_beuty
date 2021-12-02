import 'package:cosmic_beuty/ui/widgets/util_chat.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, required this.title, required this.meUser, required this.conv}) : super(key: key);

  final String title;
  final String meUser;
  final List<Chat> conv;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
     
      body: ChatWidget(meUser: meUser, conv: conv,),
    );
  }
}