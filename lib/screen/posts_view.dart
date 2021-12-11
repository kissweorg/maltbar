import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/models/post.dart';
import 'package:maltbar/provider/providers.dart';

class PostsView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(postProvider).maybeWhen(fetched: (posts) {
      return ListView.separated(
        // padding: EdgeInsets.all(10.0),
        itemBuilder: (context, index) {
          final post = posts[index];
          return GestureDetector(
            onTap: () => print(post.toJson()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text(post.topic),
                  trailing: IconButton(
                    icon: Icon(Icons.star_outline),
                    onPressed: () {
                      print(post.toJson());
                    },
                  ),
                ),
                post.imageUrl != null
                    ? Image.network(post.imageUrl!)
                    : Container(),
                ListTile(
                  title: Text(
                    post.user.nickname,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(post.content),
                ),
                ..._buildComments(post.comments),
              ],
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

  _buildComments(List<Comment> comments) {
    return comments.map(
      (Comment comment) => Text(
        comment.content,
        key: ValueKey(comment.id),
      ),
    );
  }
}
