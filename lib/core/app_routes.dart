import 'package:flutter/material.dart';
import 'package:projectskripsideteksi/screens/about_screen.dart';
import 'package:projectskripsideteksi/screens/dashboard.dart';
import 'package:projectskripsideteksi/screens/detail_articles_page.dart';
import 'package:projectskripsideteksi/screens/detail_penyakit.dart';
import 'package:projectskripsideteksi/screens/detail_profil.dart';
import 'package:projectskripsideteksi/screens/deteksi.dart';
import 'package:projectskripsideteksi/screens/hama_penyakit.dart';
import 'package:projectskripsideteksi/screens/loadingscreen.dart';
import 'package:projectskripsideteksi/screens/onboarding_screen.dart/onboarding_screen.dart';
import 'package:projectskripsideteksi/screens/splash/splash_screen.dart';
import 'package:projectskripsideteksi/screens/tips_budidaya.dart';
import 'package:projectskripsideteksi/screens/welcome_scree.dart';
class AppRoutes {
  //from this route class we will manage all navigation direction in our app

  static const String splash = "/";
  static const String onboard = "/onboard";
  static const String home = "/home";
  static const String dashboard = "/dashboard";
  static const String penyakitanggur = "/penyakitanggur";
  static const String hamapenyakit = "/hamapenyakit";
  static const String tipzbudidaya = "/tipzbudidaya";
  static const String detailprofil = "/detailprofil";
  static const String aboutaplikasi = "/aboutaplikasi";
  static const String detailArticle = "/detailArticle";
  static const String loading = "/loading"; // Tambahkan rute ini// Tambahkan rute ini

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SplashScreen());

      case AppRoutes.onboard:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const OnboardingScreen());

      case AppRoutes.home:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const MyDashboardPage());

      case AppRoutes.dashboard:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const MyHomePage());

      case AppRoutes.hamapenyakit:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const HamaScreen());

      case AppRoutes.tipzbudidaya:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const TipzBudidaya());

      case AppRoutes.detailprofil:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ProfilScreen());

      case AppRoutes.aboutaplikasi:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const AboutScreen());

      case AppRoutes.detailArticle: // Tambahkan rute ini
        return MaterialPageRoute(
            settings: settings, builder: (_) => const DetailArticlePage());
      case AppRoutes.loading: // Tambahkan rute ini
        return MaterialPageRoute(
            settings: settings, builder: (_) => const LoadingScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}