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
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ],
    );

    Widget chatsSection = Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: const [
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/contact.png'),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Todd Peterson", textAlign: TextAlign.start,),
                          Text("Lorem ipsum dolor sit amet consectur", textAlign: TextAlign.start, softWrap: true,),
                        ],
                      ),
                      Column(
                        children: [
                          Text("2 min ago")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: titleSection,
      ),
      body: chatsSection,
    );
  }
}
