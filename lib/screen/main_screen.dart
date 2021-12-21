import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kisswe/provider/bottom_navigation/bottom_navigation_state.dart';
import 'package:kisswe/provider/providers.dart';

class MainScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState {
  @override
  void initState() {
    super.initState();
    print("Init state main screen");
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(authProvider).maybeWhen(
          fetching: () {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          },
          unauthenticated: () {
            print("hello");
            Future.microtask(
                () => Beamer.of(context).beamToReplacementNamed("/auth"));
            return Container();
          },
          authenticated: (me) => Scaffold(
            appBar: ref.watch(bottomNavigationProvider).when(
                  switching: (from, to) => from.appBar(context),
                  switched: (current) => current.appBar(context),
                ),
            body: ref.watch(bottomNavigationProvider).when(
                switching: (from, to) => Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                switched: (current) => current.appView(context)),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: ref.watch(bottomNavigationProvider).when(
                    switching: (from, to) => to.index,
                    switched: (current) => current.index,
                  ),
              onTap: ref.read(bottomNavigationProvider.notifier).switchTab,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: "목록"),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: "찾기"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "프로필"),
              ],
            ),
          ),
          orElse: () {
            return Scaffold(
              body: Center(
                child: Text("Authentication required"),
              ),
            );
          },
        );
  }
}
