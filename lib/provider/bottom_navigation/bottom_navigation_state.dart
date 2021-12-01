import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maltbar/screen/camera_view.dart';
import 'package:maltbar/screen/map_view.dart';
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

enum BottomNavigation { posts, search, camera, map, profile }

extension BottomNavigationExtension on BottomNavigation {
  String get name => describeEnum(this);

  Widget get appView {
    switch (this) {
      case BottomNavigation.posts:
        return PostsView();
      case BottomNavigation.camera:
        return CameraView();
      case BottomNavigation.search:
        return SearchView();
      case BottomNavigation.map:
        return MapView();
      case BottomNavigation.profile:
        return ProfileView();
    }
  }

  AppBar get appBar {
    switch (this) {
      case BottomNavigation.posts:
        return AppBar(
          title: Text("posts"),
        );
      case BottomNavigation.search:
        return AppBar(
          title: Text("search"),
        );
      case BottomNavigation.camera:
        return AppBar(
          title: Text("camera"),
        );
      case BottomNavigation.map:
        return AppBar(
          title: Text("map"),
        );
      case BottomNavigation.profile:
        return AppBar(
          title: Text("profile"),
        );
    }
  }
}
