import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kisswe/provider/providers.dart';

class AuthScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello"),
            SizedBox(
              height: 16,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await ref.read(authProvider.notifier).loginWithKakao();
                    ref.read(authProvider).maybeWhen(
                        profileFetched: (token, me) {
                          Beamer.of(context).beamToReplacementNamed("/main");
                        },
                        orElse: () {});
                  },
                  child: Icon(Icons.lock_open),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Beamer.of(context).beamToReplacementNamed("/main");
                  },
                  child: Icon(Icons.home),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
