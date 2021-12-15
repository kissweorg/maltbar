import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kisswe/models/me.dart';
import 'package:kisswe/provider/post/post_domain.dart';
import 'package:kisswe/provider/providers.dart';

class CreatePostScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topicConrtoller = useTextEditingController(text: '');
    final contentController = useTextEditingController(text: '');
    return ref.watch(authProvider).maybeWhen(
          profileFetched: (String accessToken, Me me) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Create Post'),
                actions: [
                  IconButton(
                    onPressed: () async {
                      final createPostDto = CreatePostDto(
                        topic: topicConrtoller.text,
                        content: contentController.text,
                      );
                      await ref
                          .read(postProvider.notifier)
                          .createPost(createPostDto);
                      Beamer.of(context).beamBack();
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
                              me.nickname,
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
                          controller: topicConrtoller,
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
          },
          orElse: () => Text("Something bad happened."),
        );
  }
}
