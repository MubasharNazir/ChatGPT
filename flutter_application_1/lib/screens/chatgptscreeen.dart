import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medecine_donation_app/providers/chat_providers.dart';
import 'package:medecine_donation_app/widgets/chat_item.dart';
import 'package:medecine_donation_app/widgets/my_app_bar.dart';

import '../widgets/text_and_voice_field.dart';

class ChatGptScreen extends StatelessWidget {
  const ChatGptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Expanded(child: Consumer(builder: (context, ref, child) {
            final chats = ref.watch(chatsProvider);
            return ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) => ChatItem(
                      text: chats[index].message,
                      isMe: chats[index].isMe,
                    ));
          })),
          const Padding(
              padding: EdgeInsets.all(12), child: TextAndVoiceField()),
        ],
      ),
    );
  }
}
