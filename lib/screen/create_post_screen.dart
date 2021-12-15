import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kisswe/provider/post/post_domain.dart';
import 'package:kisswe/provider/providers.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  TextEditingController topicController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
        actions: [
          IconButton(
            onPressed: () {
              final createPostDto = CreatePostDto(
                topic: topicController.text,
                content: contentController.text,
              );
              ref.read(postProvider.notifier).createPost(createPostDto).then(
                  (value) =>
                      Beamer.of(context).beamToReplacementNamed("/main"));
            },
            icon: Icon(
              Icons.check,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ref.read(authProvider).whenOrNull(
                            authenticated: (me) {
                              return me.nickname;
                            },
                          ) ??
                          "",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                ButtonBar(
                  children: [
                    IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 12),
                TextFormField(
                  controller: topicController,
                  decoration: const InputDecoration(
                    labelText: '뭘 찾으시나요?',
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: contentController,
                  decoration: const InputDecoration(
                    labelText: '',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
