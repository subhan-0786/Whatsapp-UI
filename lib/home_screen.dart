import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text("Whatsapp"),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        const PopupMenuItem(
                            value: '1', child: Text("New Group")),
                        const PopupMenuItem(
                            value: '2', child: Text("Settings")),
                        const PopupMenuItem(value: '3', child: Text("Logout"))
                      ]),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(children: [
            const Text("Camera"),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1568909511069-4d66d7db5fe3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'),
                    ),
                    title: Text('Subhan Amjad'),
                    subtitle: Text("Where is my guitar?"),
                    trailing: Text("3:42 AM"),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1568909511069-4d66d7db5fe3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'),
                      ),
                    ),
                    title: const Text('Subhan Amjad'),
                    subtitle: const Text("50m ago"),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1568909511069-4d66d7db5fe3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'),
                    ),
                    title: const Text('Subhan Amjad'),
                    subtitle: index / 2 == 0
                        ? const Text("You missed an audio call")
                        : const Text("Call time: 12:23"),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ]),
        ));
  }
}
