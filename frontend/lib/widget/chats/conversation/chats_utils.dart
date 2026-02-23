import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class WidgetMessage {
  static customUserAppBar(String name) {
    return Container(
      padding: const EdgeInsets.only(top: 48),
      height: 130,
      color: Colors.cyan,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_rounded,
                  size: 28, color: Colors.white)),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.amber,
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
              const Text(
                'Last seen at 12:07PM',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          ),
          // const SizedBox(
          //   width: 40,
          // ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.videocam_outlined,
                      color: Colors.white,
                      size: 28,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                      size: 28,
                    )),
                PopupMenuButton(
                    color: Colors.white,
                    position: PopupMenuPosition.under,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                              value: 1, child: Text('New group')),
                          const PopupMenuItem(
                              value: 2, child: Text('View contact')),
                          const PopupMenuItem(value: 3, child: Text('Search')),
                          const PopupMenuItem(
                              value: 4, child: Text('Media, links, and docs')),
                          const PopupMenuItem(
                              value: 5, child: Text('Mute notification')),
                          const PopupMenuItem(
                              value: 6, child: Text('Disappearing messages')),
                          const PopupMenuItem(
                              value: 7, child: Text('Chat theme')),
                          const PopupMenuItem(value: 8, child: Text('More')),
                        ]),
              ],
            ),
          )
        ],
      ),
    );
  }

  static customChatTextFeild(context) {
    final messageController = TextEditingController();
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: messageController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide:
                      const BorderSide(color: Colors.black87, width: .75)),
              hintText: 'Message',
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_emotions_outlined)),
              suffixIcon: SizedBox(
                width: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.attach_file_outlined),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.width * .54,
                                width: MediaQuery.of(context).size.width * .90,
                                child: const Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.blueAccent,
                                            child: Icon(
                                              Icons.edit_document,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.pink,
                                            child: Icon(
                                              Icons.camera_alt,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.purple,
                                            child: Icon(
                                              Icons.photo,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.amber,
                                            child: Icon(
                                              Icons.audiotrack_outlined,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.cyan,
                                            child: Icon(
                                              Icons.pin_drop,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.blue,
                                            child: Icon(
                                              Icons.person,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.cyan,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.white,
              )),
        )
      ],
    );
  }

  static customFriendMessage(String friendMessage) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Card(
        color: Colors.white,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 320,
          ),
          margin: const EdgeInsets.only(bottom: 6, right: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: const BoxDecoration(
              //color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(14))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                friendMessage,
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("02:23PM",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  static customMyMessage(String myMessage) {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
        color: const Color(0xffdcf8c6),
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 290,
          ),
          margin: const EdgeInsets.only(bottom: 6, right: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                myMessage,
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("02:23PM",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.done_all,
                    size: 18.0,
                    color: Colors.blue,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
