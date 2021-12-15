import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kisswe/models/post.dart';
import 'package:kisswe/provider/providers.dart';

class PostsView extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PostsState();
}

class _PostsState extends ConsumerState<PostsView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      ref.read(postProvider.notifier).fetchPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(postProvider).maybeWhen(
      fetched: (posts) {
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
      },
      orElse: () {
        return Center(child: CircularProgressIndicator.adaptive());
      },
    );
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
