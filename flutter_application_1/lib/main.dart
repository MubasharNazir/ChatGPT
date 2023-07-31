import 'package:flutter/material.dart';
import 'package:medecine_donation_app/constrains/theme.dart';
import 'package:medecine_donation_app/providers/active_theme_provider.dart';
//import 'package:medecine_donation_app/screens/chatgptscreeen.dart';
import 'package:medecine_donation_app/screens/login.dart';
//import 'package:medecine_donation_app/screens/SignUp.dart';
//import 'package:medecine_donation_app/screens/login.dart';
//import 'package:medecine_donation_app/screens/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTheme = ref.watch(activeThemeProvider);
    return MaterialApp(
      theme: Lighttheme,
      darkTheme: Darktheme,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: activeTheme == Themes.dark ? ThemeMode.dark : ThemeMode.light,
      home: LoginScreen(),
    );
  }
}
