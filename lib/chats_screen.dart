import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.sort,
              color: Colors.white,
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Mes discussions",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );

    Widget chatListSection = ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 8, // Remplace cela par le nombre réel de discussions
      itemBuilder: (context, index) {
        return ChatListItem(
          contactName: 'Nom du contact',
          lastMessage: 'Dernier message de la discussion...',
          time: '12:34', // Remplace cela par l'heure réelle
          onTap: () {
            // Action lorsqu'une discussion est sélectionnée
          },
        );
      },
    );

    Widget bottomNavigationBar = BottomNavigationBar(
      backgroundColor: Colors.grey.shade200,
      selectedItemColor: Colors.blue.shade900,
      unselectedItemColor: Colors.grey.shade600,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.message_rounded),
          label: "Chats",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded), label: "Profile"),
      ]
    );

    return Scaffold(
      appBar: AppBar(
        title: titleSection,
        backgroundColor: Colors.blue.shade900,
      ),
      body: chatListSection,
      bottomNavigationBar: bottomNavigationBar
    );
  }
}

class ChatListItem extends StatelessWidget {
  final String contactName;
  final String lastMessage;
  final String time;
  final VoidCallback onTap;

  const ChatListItem({
    super.key,
    required this.contactName,
    required this.lastMessage,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/contact.png'),
          ),
          Material(
            color: Colors.transparent,
            shape:
                CircleBorder(side: BorderSide(color: Colors.white, width: 3)),
            child: Icon(
              Icons.circle,
              color: Colors.green,
              size: 15,
            ),
          )
        ],
      ),
      title: Text(contactName,
          style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(
        lastMessage,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: Text(
        time,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      onTap: onTap,
    );
  }
}
