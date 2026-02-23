import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ping/widget/updates/follow_bar.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            title: Text('Status'),
            trailing: Icon((FontAwesomeIcons.ellipsisVertical)),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.cyan,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  )),
            ),
            title: const Text('My status'),
            subtitle: const Text(
              'tap to add stutus update',
              style: TextStyle(fontSize: 12),
            ),
          ),
          const ListTile(
            title: Text('Channels'),
            trailing: Icon((FontAwesomeIcons.plus)),
          ),
          const ListTile(
            title: Text('Find Channels'),
            trailing: Icon((FontAwesomeIcons.magnifyingGlass)),
          ),
          const SizedBox(height: 6),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal, child: FollowBar())
        ],
      ),
    );
  }
}
