import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(title: Text("Profile")),
              ListTile(title: Text("Profile - Hello")),
              ListTile(title: Text("Profile - Bye")),
            ],
          ),
        ),
        Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(title: Text("General")),
              ListTile(title: Text("General - Hello")),
              ListTile(title: Text("General - Bye")),
            ],
          ),
        ),
      ],
    );
  }
}
