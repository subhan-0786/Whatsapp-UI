import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
        backgroundColor: const Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1568909511069-4d66d7db5fe3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'),
                    ),
                    title: Text('Subhan Amjad'),
                    trailing: Text("3:42 AM"),
                  );
                }),
          )
        ],
      ),
    );
  }
}
