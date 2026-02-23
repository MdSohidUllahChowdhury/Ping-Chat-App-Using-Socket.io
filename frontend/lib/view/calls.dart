import 'package:flutter/material.dart';
import 'package:ping/model/call_list.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 6),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.cyan,
              child: Icon(Icons.link, color: Colors.white),
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your ping call'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: calls.length,
              itemBuilder: (context, index) {
                final i = calls[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                    child: i.avatarUrl,
                  ),
                  title: Text(i.name),
                  subtitle: Row(
                    children: [
                      i.type == CallType.incoming
                          ? const Icon(Icons.call_received,
                              color: Colors.green, size: 16)
                          : i.type == CallType.outgoing
                              ? const Icon(Icons.call_made,
                                  color: Colors.green, size: 16)
                              : const Icon(Icons.call_missed,
                                  color: Colors.red, size: 16),
                      const SizedBox(width: 8.0),
                      Text(i.time),
                    ],
                  ),
                  trailing: Icon(
                    i.isVideoCall ? Icons.videocam : Icons.call,
                    color: Colors.cyan,
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
