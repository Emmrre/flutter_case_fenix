import 'package:case_fenix/get_it/get_it.dart';
import 'package:case_fenix/global_widgets/color_palette.dart';
import 'package:case_fenix/global_widgets/navigation_helper/navigation_helper.dart';
import 'package:case_fenix/screens/view/home_screen_view.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIT();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Template',
      navigatorKey: Navigation.navigationKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPalette.blueDark,
        appBarTheme: AppBarTheme(
            backgroundColor: ColorPalette.blueDark,
            titleTextStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
        useMaterial3: true,
      ),
      home: const HomeScreenView(),
    );
  }
}
