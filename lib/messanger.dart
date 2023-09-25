// main.dart
import 'package:flutter/material.dart';
import 'package:massenger/model/messanger_class.dart';
import 'package:massenger/view/component/messanger_design.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Model> details = [
    Model(title: 'Abdelrahman Dyaa', subtitle: 'hello', img: 'assets/hunterxhunter1.jpg'),
    Model(title: 'Mohamed Ahmed', subtitle: 'im at home', img: 'assets/hunterxhunter1.jpg'),
    Model(title: 'khaled Ali', subtitle: 'hospital', img: 'assets/hunterxhunter1.jpg'),
    Model(title: 'Abdelrahman Dyaa', subtitle: 'hello', img: 'assets/hunterxhunter1.jpg'),
    Model(title: 'Mohamed Ahmed', subtitle: 'im at home', img: 'assets/hunterxhunter1.jpg'),
    Model(title: 'khaled Ali', subtitle: 'hospital', img: 'assets/hunterxhunter1.jpg'),
    Model(title: 'Mohamed Ahmed', subtitle: 'im at home', img: 'assets/hunterxhunter1.jpg'),
    Model(title: 'khaled Ali', subtitle: 'hospital', img: 'assets/hunterxhunter1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    bool isOnline = true;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/hunterxhunter1.jpg'),
          radius: 30,
        ),
        title: const Text(
          'Chats',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        elevation: 0,
        actions: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xff4f4f4f),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 15,),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff4f4f4f),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff4f4f4f),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                hintText: "search",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildProfilePictureWithOnlineIndicator(isOnline: isOnline),
                  const SizedBox(width: 10),
                  buildProfilePictureWithOnlineIndicator(isOnline: isOnline),
                  const SizedBox(width: 10),
                  buildProfilePictureWithOnlineIndicator(isOnline: isOnline),
                  const SizedBox(width: 10),
                  buildProfilePictureWithOnlineIndicator(isOnline: isOnline),
                  const SizedBox(width: 10),
                  buildProfilePictureWithOnlineIndicator(isOnline: isOnline),
                  const SizedBox(width: 10),
                  buildProfilePictureWithOnlineIndicator(isOnline: isOnline),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return MessWidget(messmodel: details[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 15);
                },
                itemCount: details.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


