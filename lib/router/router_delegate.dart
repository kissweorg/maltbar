import 'package:beamer/beamer.dart';
import 'package:maltbar/screen/create_post_screen.dart';
import 'package:maltbar/screen/main_screen.dart';

final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      "/": (context, state, data) => MainScreen(),
      "/create-post": (context, state, data) => CreatePostScreen(),
    },
  ),
);

// TODO: INVESTIGATE THIS
// // LOCATIONS
// class MainLocation extends BeamLocation<BeamState> {
//   @override
//   List<String> get pathPatterns => ['/'];

//   @override
//   List<BeamPage> buildPages(BuildContext context, BeamState state) {
//     return [
//       BeamPage(
//         key: ValueKey('main'),
//         title: 'Main',
//         child: MainScreen(),
//       ),
//     ];
//   }
// }

// class CreatePostLocation extends BeamLocation<BeamState> {
//   @override
//   List<BeamPage> buildPages(BuildContext context, BeamState state) {
//     return [
//       BeamPage(
//         key: ValueKey('create-post'),
//         title: 'Create Post',
//         child: CreatePostScreen(),
//       ),
//     ];
//   }

//   @override
//   List<Pattern> get pathPatterns => ['/create-post'];
// }
