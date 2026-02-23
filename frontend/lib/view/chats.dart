import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping/model/chat_list.dart';
import 'package:ping/widget/chats/conversation/chat_conversation.dart';
import 'package:ping/widget/chats/filter_section.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    final chatList = ChatList.chatList;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 8),
          //! Search Bar
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.93,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                filled: true,
                fillColor: Colors.grey.shade100,
                prefixIcon: const Icon(Icons.search, color: Colors.black38),
                hintText: 'Search or start new chat',
                hintStyle: const TextStyle(color: Colors.black38),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          //! Filter Section
          filterSection(),
          //! Chat Section
          ListView.builder(
            itemCount: chatList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Get.to(
                      () => ChatConversation(chatList[index].name.toString()));
                },
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.indigo,
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(chatList[index].name.toString()),
                subtitle: Text(chatList[index].message.toString()),
                trailing: Text(chatList[index].time.toString()),
              );
            },
          ),
          //! Archive Section
          Row(
            children: [
              const SizedBox(
                height: 30,
                width: 20,
              ),
              const Icon(
                Icons.archive_outlined,
                color: Colors.cyan,
                size: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {},
                  child: const Text(
                    'Archived',
                    style: TextStyle(fontSize: 15),
                  ))
            ],
          ),
          //! Note Section
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 20,
              ),
              Icon(
                Icons.lock,
                size: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Your personal messages are end-to-end encrypted',
                style: TextStyle(fontSize: 9),
              )
            ],
          ),
        ],
      ),
    );
  }
}
