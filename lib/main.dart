import 'package:flutter/material.dart';
import 'package:practice_app/configs/di.dart';
import 'package:practice_app/configs/theme.dart';
import 'package:practice_app/features/screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'practice',
      theme: myTheme(),
      builder: (context, ui) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: ui!),
      home: const SplashScreen(),
    );
  }
}
