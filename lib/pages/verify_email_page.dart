import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../routes.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailVerificationScreen(
      headerBuilder: (context, constraints, shrinkOffset) {
        return Container(
          padding: const EdgeInsets.all(20).copyWith(top: 40),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fail.png'),
            ),
          ),
        );
      },
      actions: [
        EmailVerified(() {
          Navigator.pushReplacementNamed(context, Routes.profileLink);
        }),
        Cancel((context) {
          FlutterFireUIAuth.signOut(context: context);
          Navigator.pushReplacementNamed(context, Routes.homeLink);
        }),
      ],
    );
  }
}
