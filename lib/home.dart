import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              Tab(child: Text("Chat")),
              Tab(child: Text("Status")),
              Tab(child: Text("Call")),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (
                context,
              ) =>
                  const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New group'),
                ),
                PopupMenuItem(
                  value: '1',
                  child: Text('New broadcast'),
                ),
                PopupMenuItem(
                  value: '1',
                  child: Text('Linked deices'),
                ),
                PopupMenuItem(
                  value: '1',
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  value: '1',
                  child: Text('Settings'),
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
          title: const Text("Whatsapp"),
          backgroundColor: Colors.teal,
        ),
        body: TabBarView(
          children: [
            const Text("Camera"),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text(
                    "Daddy",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("We and our partners store and"),
                  trailing: Text("09:35"),
                );
              },
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                  title: const Text(
                    "Daddy",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text("09:35"),
                  // trailing: Icon(Icons.phone),
                );
              },
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text(
                    "Daddy",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("09:35"),
                  trailing: Icon(Icons.phone),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
