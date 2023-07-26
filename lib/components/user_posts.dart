import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.menu)
              ],
            ),
          ),
          Container(
            height: 400,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(Icons.chat_bubble_outline),
                    ),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text('Me gusta '),
                Text(
                  'Sergio',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(' and '),
                Text(
                  'others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' Yo pienso que todo se puede saber')
                        ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
