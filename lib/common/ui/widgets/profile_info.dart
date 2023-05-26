import 'package:companion_app/common/Payment/payment.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../../models/user.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user.avatar),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.username, style: const TextStyle(fontSize: 24)),
                const SizedBox(height: 8),
                Text(user.location),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text('${user.followers} followers'),
                    const SizedBox(width: 16),
                    Text('${user.events} events'),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            // Within the `FirstRoute` widget
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  myPayment(title: 'COMPANION',)),
              );
            },
            child: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
