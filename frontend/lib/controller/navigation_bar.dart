import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ping/view/calls.dart';
import 'package:ping/view/chats.dart';
import 'package:ping/view/communities.dart';
import 'package:ping/view/updates.dart';

class NavigationBarOwn extends StatefulWidget {
  const NavigationBarOwn({super.key});

  @override
  State<NavigationBarOwn> createState() => _NavigationBarOwnState();
}

class _NavigationBarOwnState extends State<NavigationBarOwn> {
  //! Where to index start
  int _currentPageIndex = 0;

  //! Pages List,
  final List _pagedata = [
    const Chats(),
    const Updates(),
    const Communities(),
    const Calls()
  ];

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.cyan,
      elevation: 0,
      title: Text(
        "Ping",
        style: TextStyle(
            fontFamily: GoogleFonts.galada().fontFamily,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(237, 255, 255, 255)),
      ),
      actions: [
        IconButton(
            onPressed: () {
              // Get.to(() => const CameraScreen());
            },
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            )),
        const SizedBox(width: 10),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            )),
        PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            color: Colors.white,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            position: PopupMenuPosition.under,
            itemBuilder: (context) => [
                  const PopupMenuItem(value: 1, child: Text('New group')),
                  const PopupMenuItem(value: 2, child: Text('New broadcast')),
                  const PopupMenuItem(value: 3, child: Text('Linked  devices')),
                  const PopupMenuItem(
                      value: 4, child: Text('Starred messages')),
                  const PopupMenuItem(value: 5, child: Text('Settings')),
                ]),
      ],
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.cyan,
      onPressed: () {},
      child: const Icon(
        FontAwesomeIcons.folderPlus,
        color: Colors.white,
        size: 25,
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.chat_rounded),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.tips_and_updates_outlined), label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined), label: 'Communities'),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined), label: 'Calls')
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[800],
        enableFeedback: true,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        elevation: 0,
        currentIndex: _currentPageIndex,
        onTap: (gotopage) {
          setState(() {
            _currentPageIndex = gotopage;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _pagedata[_currentPageIndex],
      floatingActionButton: _buildFloatingActionButton(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
