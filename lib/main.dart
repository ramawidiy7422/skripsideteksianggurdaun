import 'package:flutter/material.dart';
import 'core/app_routes.dart';
import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Applikasi Rama',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appColor.primaryColor),
        textTheme: const TextTheme(
            bodySmall: TextStyle(fontFamily: 'Poppins'),
            bodyMedium: TextStyle(fontFamily: 'Poppins'),
            bodyLarge: TextStyle(fontFamily: 'Poppins'),
            displayLarge: TextStyle(fontFamily: 'Poppins')),
        useMaterial3: true,
      ),
      initialRoute:
      AppRoutes.splash, //splash screen will come first as it is define here
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
