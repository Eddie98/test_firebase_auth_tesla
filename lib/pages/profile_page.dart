import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:test_auth/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      actions: [
        SignedOutAction((context) {
          Navigator.pushReplacementNamed(context, Routes.homeLink);
        }),
      ],
      children: [
        Container(
          width: 200.0,
          height: 200.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/success.png'),
            ),
          ),
        ),
      ],
    );
  }
}
