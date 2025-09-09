import 'package:flutter/material.dart';
import 'package:loginpage/AuthProvider.dart';
import 'package:loginpage/HomePage.dart';
import 'package:loginpage/LoginPage.dart';
import 'package:loginpage/ThemeProvider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<AuthProvider, ThemeProvider>(
      builder: (context, auth, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: auth.isLoggedIn ? HomePage() : LoginPage(),
        );
      },
    );
  }
}

