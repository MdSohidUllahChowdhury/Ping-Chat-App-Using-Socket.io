import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LinkandTitle extends StatelessWidget {
  final String title;
  final String linkadd;
  const LinkandTitle({super.key, required this.title, required this.linkadd});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6),
      height: 150,
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(131, 158, 158, 158),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          CircleAvatar(radius: 25, backgroundImage: NetworkImage(linkadd)),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 4,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 4,
                padding: const EdgeInsets.only(left: 5, right: 5)),
            onPressed: () {
              Get.snackbar(
                'Following',
                'You are now following $title',
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.cyan.shade200,
                colorText: Colors.white,
              );
            },
            child: const Text('Follow'),
          )
        ],
      ),
    );
  }
}
