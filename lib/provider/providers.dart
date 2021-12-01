import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/provider/post/post_notifier.dart';
import 'package:maltbar/provider/post/post_state.dart';

import 'bottom_navigation/bottom_navigation_notifier.dart';
import 'bottom_navigation/bottom_navigation_state.dart';

final postProvider = StateNotifierProvider<PostNotifier, PostState>(
  (ref) => PostNotifier(
    read: ref.read,
    state: PostState.fetching(),
  ),
);

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationNotifier, BottomNavigationState>(
  (ref) => BottomNavigationNotifier(
    read: ref.read,
    state: BottomNavigationState.switched(BottomNavigation.posts),
  ),
);
