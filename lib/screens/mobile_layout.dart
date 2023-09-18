import 'package:flutter/material.dart';
import 'package:gossip_mon/constants/colors.dart';
import 'package:gossip_mon/widgets/contacts_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(
                itemBuilder: (context) =>
                    [const PopupMenuItem(child: Text('Settings'))],
              )
            ],
            title: const Text(
              "Whatsapp",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            bottom: const TabBar(
                indicatorColor: tabColor,
                labelColor: tabColor,
                indicatorWeight: 4,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "CHATS",
                  ),
                  Tab(
                    text: "STATUS",
                  ),
                  Tab(
                    text: "CALLS",
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            ContactsList(),
            Center(
              child: Text("Status"),
            ),
            Center(
              child: Text("Calls"),
            )
          ])),
    );
  }
}
