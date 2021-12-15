import 'package:beamer/beamer.dart';
import 'package:kisswe/screen/create_post_screen.dart';
import 'package:kisswe/screen/auth_screen.dart';
import 'package:kisswe/screen/main_screen.dart';
import 'package:kisswe/screen/splash_screen.dart';

final routerDelegate = BeamerDelegate(
  initialPath: "/splash",
  locationBuilder: RoutesLocationBuilder(
    routes: {
      "/splash": (context, state, data) => SplashScreen(),
      "/auth": (context, state, data) => AuthScreen(),
      "/main": (context, state, data) => MainScreen(),
      "/main/create-post": (context, state, data) => CreatePostScreen(),
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
