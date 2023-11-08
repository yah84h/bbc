import 'package:bbc/utils/import/u_imports_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//import 'constant/app_name.dart';

void main() async {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppName.name,
      theme: UtilsSettingTheme.light(),
      darkTheme: UtilsSettingTheme.dark(),
      debugShowCheckedModeBanner: false,
      home: const ViewHome(),
    );
  }
}
