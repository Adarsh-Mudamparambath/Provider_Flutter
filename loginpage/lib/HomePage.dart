import 'package:flutter/material.dart';
import 'package:loginpage/AuthProvider.dart';
import 'package:loginpage/ThemeProvider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              context.read<AuthProvider>().logout();
            },
          ),
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return IconButton(
                icon: Icon(themeProvider.isDarkMode
                    ? Icons.light_mode
                    : Icons.dark_mode),
                onPressed: () {
                  themeProvider.toggleTheme();
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Consumer<AuthProvider>(
          builder: (context, auth, child) {
            return Text(
              "Hai ${auth.username}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}
