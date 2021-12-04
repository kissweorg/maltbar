import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/provider/bottom_navigation/bottom_navigation_state.dart';
import 'package:maltbar/provider/providers.dart';

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ref.watch(authProvider).when(unauthenticated: () {
        return Scaffold(
          body: Center(
            child: Text("Authentication required"),
          ),
        );
      }, fetching: () {
        return Center(
          child: CircularProgressIndicator.adaptive(),
        );
      }, authenticated: (token) {
        return Scaffold(
          appBar: ref.watch(bottomNavigationProvider).when(
              switching: (from, to) => from.appBar,
              switched: (current) => current.appBar),
          body: ref.watch(bottomNavigationProvider).when(
              switching: (from, to) => Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
              switched: (current) => current.appView),
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
        );
      }),
    );
  }
}
