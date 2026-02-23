import 'package:flutter/material.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.asset('asset/communities.jpg'),
        ),
        const Center(
          child: Text(
            'Stay connected with a community',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Center(
          child: Text(
            "Communitys bring members together in",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
          ),
        ),
        const Center(
          child: Text(
            'topic-based groups, and make it easy to get admin',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
          ),
        ),
        const Center(
          child: Text(
            "announcements.Any community you're added to will",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
          ),
        ),
        const Center(
            child: Text(
          'apper here.',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
        )),
        const SizedBox(
          height: 12,
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'See example communites',
              style: TextStyle(fontSize: 12, color: Colors.cyan),
            )),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Notification: Community started!'),
              ),
            );
          },
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all<Size>(const Size(280, 45)),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.cyan),
          ),
          child: const Text(
            'Start your community',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        )
      ],
    ));
  }
}
