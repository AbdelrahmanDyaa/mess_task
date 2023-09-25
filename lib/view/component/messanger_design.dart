
import 'package:flutter/material.dart';
import 'package:massenger/model/messanger_class.dart';

Widget buildProfilePictureWithOnlineIndicator({required bool isOnline}) {
  return Stack(
    children: [
      Container(
        width: 65,
        height: 66,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const ClipRRect(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/hunterxhunter1.jpg'),
            radius: 30,
          ),
        ),
      ),
      Positioned(
        bottom: 2,
        right: 2,
        child: Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isOnline ? Colors.green : Colors.grey,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
          ),
        ),
      ),
    ],
  );
}

class MessWidget extends StatelessWidget {
  final Model messmodel;

  const MessWidget({Key? key, required this.messmodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(messmodel.img),
        radius: 30,
      ),
      title: Text(messmodel.title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            messmodel.subtitle,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),

        ],
      ),
    );
  }
}
