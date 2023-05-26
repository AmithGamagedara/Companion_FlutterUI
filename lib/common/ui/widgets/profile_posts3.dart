// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../controller/userposts_controller.dart';
import '../../models/posts.dart';

class ProfilePosts3 extends StatelessWidget {
  const ProfilePosts3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 221, 218, 218),
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage('https://secondwindmovement.com/wp-content/uploads/2021/12/doing-charity-work-featured-images.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // LinearProgressIndicator
            ClipRRect(
              borderRadius: BorderRadius.circular(10),

            ),
            const SizedBox(height: 8),
            // "Liked by Huge and 200 others" Text
            const Text(
              'Liked by Binuli and 132 others',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 8),
            // Likes avatars and "150 Likes" Text
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // List of Likes' avatars
                Expanded(
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 8,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/3.jpg'),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/1.jpg'),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/2.jpg'),
                      ),
                      // Add more Likes' avatars here
                    ],
                  ),
                ),
                // "150 Likes" Text
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: SizedBox(
              ),
            ),
          ],
        ),
      ),
    );
  }
}
