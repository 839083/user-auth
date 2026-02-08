import 'package:flutter/material.dart';

// Pages
import 'pages/role_selection_page.dart';
import 'pages/login_page.dart';
import 'pages/normal_user_signup_page.dart';
import 'pages/organisation_user_signup_page.dart';
import 'pages/normal_user_dashboard_page.dart';
import 'pages/organisation_user_dashboard_page.dart';
import 'pages/hr_dashboard_page.dart';
import 'pages/report_monitoring_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding App',
      debugShowCheckedModeBanner: false,

      // Global theme matching your UI
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),

        // AppBar theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),

        // Input fields
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.black12),
          ),
        ),

        // Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
          ),
        ),
      ),

      // Initial screen
      initialRoute: '/',

      // Named routes
      routes: {
        '/': (context) => const RoleSelectionPage(),
        '/login': (context) => const LoginPage(),
        '/signup-normal': (context) => const NormalUserSignupPage(),
        '/signup-org': (context) =>
            const OrganisationUserSignupPage(),

        '/dashboard-normal': (context) =>
            const NormalUserDashboardPage(),
        '/dashboard-org': (context) =>
            const OrganisationUserDashboardPage(),
        '/dashboard-hr': (context) =>
            const HrDashboardPage(),

        '/report-monitoring': (context) =>
            const ReportMonitoringPage(),
      },
    );
  }
}
