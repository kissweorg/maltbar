import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostsView extends ConsumerWidget {
  final List<dynamic> samplePosts = [
    {
      "id": 20,
      "userId": "619a897275f0fe2b3175c126",
      "topic": "Glenfiddich 12",
      "content": "Hello World!",
      "thumbnailUrl":
          "http://www.gisdeveloper.co.kr/wp-content/uploads/2018/09/a.thumbnail.jpg"
    },
    {
      "id": 21,
      "userId": "619a897275f0fe2b3175c126",
      "topic": "Glenfiddich 12",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut e...",
      "thumbnailUrl": null
    },
    {
      "id": 22,
      "userId": "619a897275f0fe2b3175c126",
      "topic": "Glenfiddich 12",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut e...",
      "thumbnailUrl": null
    },
    {
      "id": 23,
      "userId": "619a897275f0fe2b3175c126",
      "topic": "Glenfiddich 12",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut e...",
      "thumbnailUrl": null
    },
    {
      "id": 24,
      "userId": "619a897275f0fe2b3175c126",
      "topic": "Glenfiddich 12",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut e...",
      "thumbnailUrl": null
    },
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final post = samplePosts[index];
        return Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: post["thumbnailUrl"] != null
                    ? Image.network(post["thumbnailUrl"])
                    : Image.asset('assets/images/no_image_thumbnail.png'),
                title: Text(post["topic"]),
                subtitle: Text(post["content"]),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: Text('지점등록'),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: samplePosts.length,
    );
  }
}
