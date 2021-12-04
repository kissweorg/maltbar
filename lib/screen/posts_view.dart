import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/provider/providers.dart';

class PostsView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(postProvider).maybeWhen(fetched: (posts) {
      return ListView.separated(
        padding: EdgeInsets.all(10.0),
        itemBuilder: (context, index) {
          final post = posts[index];
          return GestureDetector(
            onTap: () => print(jsonEncode(post)),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: post.thumbnailUrl != null
                        ? Image.network(post.thumbnailUrl!)
                        : null,
                    title: Text(post.topic),
                    subtitle: Text(post.content),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.star_outline),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: posts.length,
      );
    }, orElse: () {
      return Center(child: CircularProgressIndicator.adaptive());
    });
  }
}
