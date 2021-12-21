import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kisswe/provider/providers.dart';

class SplashScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await ref.read(authProvider.notifier).refreshToken();
      ref.read(authProvider).maybeWhen(
            authenticated: (me) =>
                Beamer.of(context).beamToReplacementNamed("/main"),
            unauthenticated: () =>
                Beamer.of(context).beamToReplacementNamed("/auth"),
            orElse: () {},
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF7F50),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'KissWe',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Signatra',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CircularProgressIndicator.adaptive(),
            ],
          ),
        ),
      ),
    );
  }
}
