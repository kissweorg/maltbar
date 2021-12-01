import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bottom_navigation/bottom_navigation_notifier.dart';
import 'bottom_navigation/bottom_navigation_state.dart';

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationNotifier, BottomNavigationState>(
  (ref) => BottomNavigationNotifier(
    read: ref.read,
    state: BottomNavigationState.switched(BottomNavigation.posts),
  ),
);
