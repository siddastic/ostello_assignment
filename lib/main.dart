import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello/screens/splash.dart';
import 'package:ostello/screens/tabs/tabs.dart';
import 'package:ostello/widgets/custom_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ostello Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          primary: const Color(0xff7D23E0),
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffFBFBFB),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (settings) {
        if (settings.name == SplashScreen.routeName) {
          return MaterialPageRoute(builder: (context) => const SplashScreen());
        } else if (settings.name == TabScreen.routeName) {
          return CustomPageRoute(child: const TabScreen());
        }
        return null; // return null if the route is not recognized
      },
    );
  }
}
