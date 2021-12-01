import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/models/post.dart';
import 'package:maltbar/provider/post/post_state.dart';

final List<Post> posts = [
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
].map((e) => Post.fromJson(e)).toList();

class PostNotifier extends StateNotifier<PostState> {
  final Reader read;
  PostNotifier({required this.read, required state}) : super(state) {
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    state = PostState.fetching();
    try {
      await Future.delayed(const Duration(seconds: 2));
      state = PostState.fetched(posts);
    } catch (e) {
      print(e);
      state = PostState.error();
    }
  }
}
