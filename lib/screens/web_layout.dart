import 'package:flutter/material.dart';
import 'package:gossip_mon/widgets/contacts_list.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              //web profile bar
              //web search bar
              Expanded(child: ContactsList())
            ],
          ),
          // Center(
          //   child: Text("This is web layout"),
          // ),
        ],
      ),
    );
  }
}
