import 'package:el_reprobado/presentation/widgets/her_message_bubble.dart';
import 'package:el_reprobado/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
    const ChatScreen({super.key});

    @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          leading: const Padding(
              padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Orange_lambda.svg/1024px-Orange_lambda.svg.png'),
            ),
          ),
          title: const Text('Chat Modificado'),
          centerTitle:
          false,
        ),
        body: _ChatView(),
      );
    }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount:10,
                  itemBuilder:(context,index) {
                    return index % 2 == 0
                    ? const HerMessageBubble()
                        : const MyMessageBubble();
      },
      ),
            ),

          ],
        ),
      ),
    );
  }
}