import 'package:ecommerce_from_scratch/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:ecommerce_from_scratch/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:ecommerce_from_scratch/features/auth/presentation/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum AppRoutes {
  signInScreen('/sign-in'),
  signUpScreen('/sign-up');
  // homeScreen('/'),
  // productDetailsScreen('/product-details'),
  // cartScreen('/cart');

  final String path;
  const AppRoutes(this.path);
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final AppRoutes? route = AppRoutes.values.cast<AppRoutes?>().firstWhere(
      (e) => e?.path == settings.name,
      orElse: () => null,
    );
    switch (route) {
      case AppRoutes.signInScreen:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => AuthViewModel(),
            child: const SignInScreen(),
          ),
        );
      case AppRoutes.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => AuthViewModel(),
            child: const SignUpScreen(),
          ),
        );
      // case AppRoutes.homeScreen:
      //   return MaterialPageRoute(builder: (context) => const SignInScreen());
      // case AppRoutes.productDetailsScreen:
      //   return MaterialPageRoute(builder: (context) => const SignInScreen());
      // case AppRoutes.cartScreen:
      //   return MaterialPageRoute(builder: (context) => const SignInScreen());
      case null:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
