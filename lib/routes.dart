import 'package:flutter/widgets.dart';
import 'package:test_auth/pages/home_page.dart';
import 'package:test_auth/pages/profile_page.dart';
import 'package:test_auth/pages/verify_email_page.dart';

class Routes {
  static const String homeLink = '/home';
  static const String verifyEmailLink = '/verify-email';
  static const String profileLink = '/profile';

  static Route<T> fadeThrough<T>(
    WidgetBuilder page, {
    RouteSettings? settings,
    int duration = 300,
  }) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return fadeThrough((context) {
      if (settings.name == homeLink) {
        return const HomePage();
      }
      if (settings.name == verifyEmailLink) {
        return const VerifyEmailPage();
      }
      if (settings.name == profileLink) {
        return const ProfilePage();
      }
      return const HomePage();
    }, settings: settings);
  }
}
