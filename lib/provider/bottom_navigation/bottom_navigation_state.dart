import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maltbar/screen/posts_view.dart';
import 'package:maltbar/screen/profile_view.dart';
import 'package:maltbar/screen/search_view.dart';

part 'bottom_navigation_state.freezed.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.switching(
          BottomNavigation from, BottomNavigation to) =
      _BottomNavigationStateSwitching;
  const factory BottomNavigationState.switched(BottomNavigation current) =
      _BottomNavigationStateSwitched;
}

enum BottomNavigation {
  posts,
  search,
  profile,
}

extension BottomNavigationExtension on BottomNavigation {
  String get name => describeEnum(this);

  Widget get appView {
    switch (this) {
      case BottomNavigation.posts:
        return PostsView();

      case BottomNavigation.search:
        return SearchView();
      case BottomNavigation.profile:
        return ProfileView();
    }
  }

  AppBar get appBar {
    switch (this) {
      case BottomNavigation.posts:
        return AppBar(
          title: Text("posts"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle),
            ),
          ],
        );
      case BottomNavigation.search:
        return AppBar(
          title: Text("search"),
        );
      case BottomNavigation.profile:
        return AppBar(
          title: Text("profile"),
        );
    }
  }
}
