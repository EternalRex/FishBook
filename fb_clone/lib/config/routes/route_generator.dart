import 'package:fb_clone/config/routes/app_routes.dart';
import 'package:fb_clone/modules/login/presentation/pages/login.dart';
import 'package:fb_clone/modules/register/presentation/pages/register_user.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterUser(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
    }
  }
}

/*

import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Example',
      initialRoute: AppRoutes.login, // Start with the login page.
      onGenerateRoute: RouteGenerator.generateRoute, // Link routing logic.
    );
  }
}
File 3: route_generator.dart
This file contains the routing logic that maps route names to screens.

dart
Copy code
import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';
import 'profile_arguments.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.profile:
        final args = settings.arguments as ProfileArguments;
        return MaterialPageRoute(builder: (_) => ProfileScreen(arguments: args));
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
              appBar: AppBar(title: Text('Error')),
              body: Center(child: Text('Route not found')),
            ));
    }
  }
}
File 4: profile_arguments.dart
This file defines a class to pass data to the profile screen.

dart
Copy code
class ProfileArguments {
  final String userId;
  final String userName;

  ProfileArguments({required this.userId, required this.userName});
}
File 5: screens/login_screen.dart
This file defines the login screen and navigates to the home screen or the profile screen.

dart
Copy code
import 'package:flutter/material.dart';
import '../app_routes.dart';
import '../profile_arguments.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.home);
              },
              child: Text('Go to Home'),
            ),
            ElevatedButton(
              onPressed: () {
                final args = ProfileArguments(userId: '123', userName: 'John Doe');
                Navigator.pushNamed(context, AppRoutes.profile, arguments: args);
              },
              child: Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
File 6: screens/home_screen.dart
This file defines a simple home screen.

dart
Copy code
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(child: Text('Welcome to the Home Screen')),
    );
  }
}
File 7: screens/profile_screen.dart
This file defines the profile screen that displays user data passed via arguments.

dart
Copy code
import 'package:flutter/material.dart';
import '../profile_arguments.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileArguments arguments;

  ProfileScreen({required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User ID: ${arguments.userId}'),
            Text('User Name: ${arguments.userName}'),
          ],
        ),
      ),
    );
  }
}

 */