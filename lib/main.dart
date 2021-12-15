import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kisswe/app.dart';
import 'package:path_provider/path_provider.dart';

final secureStorage = new FlutterSecureStorage();
CookieJar? cookieJar;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory appDocDir = await getApplicationDocumentsDirectory();
  cookieJar = PersistCookieJar(
    storage: FileStorage(appDocDir.path + "/.cookies/"),
  );
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
