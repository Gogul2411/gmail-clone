// ignore_for_file: avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:task/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Material(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search Mail",
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
              border: InputBorder.none,
              icon: const Icon(Icons.dehaze_outlined),
              suffixIcon: Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                child: const CircleAvatar(
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () async {},
        //     icon: const Icon(Icons.logout_sharp, color: Colors.white),
        //   ),
        // ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                getEmailList().length,
                (index) {
                  final item = getEmailList()[index];
                  return !item.isTopItem ? _normalItem(item) : _topItem(item);
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFece4ce),
            radius: 30.0,
            child: ClipRRect(
              //borderRadius:BorderRadius.circular(50),
              child: Image.asset("assets/icons/Icon.png"),
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<EmailModel> getEmailList() {
    return [
      EmailModel(
          const Icon(
            Icons.people_outline_rounded,
            color: Colors.blue,
          ),
          "Social",
          "Youtube",
          "Social",
          "Youtube",
          true),
      EmailModel(
          const Icon(
            Icons.tag,
            color: Colors.green,
          ),
          "Promotions",
          "Think with Google",
          "Promotions",
          "Think with Google",
          true),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Gogul ",
          "10:00 Am",
          false),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Subbu ",
          "10:00 Am",
          false),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Praveen ",
          "10:00 Am",
          false),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Bose ",
          "10:00 Am",
          false,
          true),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Sarvesh ",
          "10:00 Am",
          false),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Ruthran ",
          "10:00 Am",
          false),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Suren ",
          "10:00 Am",
          false,
          true),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Rahul ",
          "10:00 Am",
          false,
          true),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Ganesh ",
          "10:00 Am",
          false,
          true),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Yaswanth ",
          "10:00 Am",
          false,
          true),
      EmailModel(
          const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          "Email subject ",
          "Email body goes here, Please Click and View!!",
          "Kannan ",
          "10:00 Am",
          false,
          true),
    ];
  }

  _topItem(EmailModel item) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 24, right: 16),
      tileColor: Colors.white,
      leading: item.icon,
      title: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              item.subject,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              item.body,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
        decoration: BoxDecoration(
            color: item.icon.color,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: const Text(
          "12 new",
          style: TextStyle(
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _normalItem(EmailModel item) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 16, right: 8),
      tileColor: Colors.white,
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        child: item.icon,
      ),
      title: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.from,
                  style: TextStyle(
                      color: item.isRead ? Colors.grey : Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  item.time,
                  style: TextStyle(
                      color: item.isRead ? Colors.grey : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              item.subject,
              style: TextStyle(
                  color: item.isRead ? Colors.grey : Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    item.body,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                const Icon(
                  Icons.star_border_outlined,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Details(),
          ),
        );
      },
    );
  }
}

class EmailModel {
  final Icon icon;
  final String subject;
  final String body;
  final String from;
  final String time;
  final bool isTopItem;
  final bool isRead;

  EmailModel(
      this.icon, this.subject, this.body, this.from, this.time, this.isTopItem,
      [this.isRead = false]);
}
