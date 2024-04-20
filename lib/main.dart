import 'package:book_shop/firebase_options.dart';
import 'package:book_shop/generated/l10n.dart';
import 'package:book_shop/injection.dart';
import 'package:book_shop/observe.dart';
import 'package:book_shop/presentation/router/router.dart';
import 'package:book_shop/presentation/themes/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  Bloc.observer = MyBlocObserver();

  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    router.refresh();
  });

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider.value(
    // value: authProvider,
    // child:
    return MaterialApp.router(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,

      locale: const Locale('en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Book Shop',
      theme: theme(Colors.red, Brightness.light, false),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      // ),
    );
  }
}
