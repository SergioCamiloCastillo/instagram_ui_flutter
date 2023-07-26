import 'package:flutter/material.dart';
import 'package:instagram_ui/components/bubble_stories.dart';
import 'package:instagram_ui/components/user_posts.dart';

class HomePage extends StatelessWidget {
  final List people = [
    "Laura",
    "Angelica",
    "Martha",
    "Orlando",
    "Sergio",
    "Teo"
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                },
              )),
          //userposts
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(name: people[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
