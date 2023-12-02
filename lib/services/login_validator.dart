import 'package:flutter/material.dart';

void handleLogin(BuildContext context, String username, String password) {
  if (username.toLowerCase() == 'admin' && password == '1234') {
    Navigator.pushNamed(context, '/adminloginscreen');
  } else if (username.toLowerCase() == 'parent' && password == '1234') {
    Navigator.pushNamed(context, '/parentloginscreen');
  } else if (username.toLowerCase() == 'driver' && password == '1234') {
    Navigator.pushNamed(context, '/driverloginscreen');
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Login Failed'),
          content:
              const Text('Invalid username or password. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
