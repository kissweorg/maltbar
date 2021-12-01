import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bottom_navigation_state.dart';

class BottomNavigationNotifier extends StateNotifier<BottomNavigationState> {
  final Reader read;
  BottomNavigationNotifier({required this.read, required state}) : super(state);

  void switchTab(int index) {
    state = BottomNavigationState.switched(BottomNavigation.values[index]);
  }
}
