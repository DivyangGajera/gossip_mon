import 'package:flutter/material.dart';
import 'package:gossip_mon/constants/contacts_and_messages.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {},
              title: Text(
                contacts[index]['name'].toString(),
                style: const TextStyle(fontSize: 18),
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  contacts[index]['profilePic'].toString(),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(contacts[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15)),
              ),
              trailing: Text(
                contacts[index]['time'].toString(),
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
                indent: 85,
                endIndent: 85,
              ),
          itemCount: contacts.length),
    );
  }
}
