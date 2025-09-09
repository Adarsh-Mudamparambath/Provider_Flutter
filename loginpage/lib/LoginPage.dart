import 'package:flutter/material.dart';
import 'package:loginpage/AuthProvider.dart';
import 'package:provider/provider.dart';


class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: "Username"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_usernameController.text.isNotEmpty) {
                  context.read<AuthProvider>().login(_usernameController.text);
                }
              },
              child: Text("Login"),
            ),
            
          ],
        ),
      ),
    );
  }
}
