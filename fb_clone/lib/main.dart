import 'package:fb_clone/config/routes/app_routes.dart';
import 'package:fb_clone/config/routes/route_generator.dart';
import 'package:fb_clone/config/themes/primary_app_theme.dart';
import 'package:fb_clone/modules/login/presentation/pages/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  runApp(const FacebookClone());
}

class FacebookClone extends StatelessWidget {
  const FacebookClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryAppTheme,
      initialRoute: AppRoutes.login,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const Login(),
    );
  }
}

/*

lib/
├── core/
│   ├── constants/
│   ├── error/
│   ├── utils/
│   ├── usecases/
│   └── widgets/
├── features/
│   ├── feature1/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── pages/
│   │       ├── widgets/
│   │       └── controllers/
│   └── feature2/
│       └── ...
├── config/
│   ├── routes/
│   ├── themes/
│   └── environment/
└── main.dart


 */
