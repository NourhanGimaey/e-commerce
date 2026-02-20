import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_from_scratch/core/routes/app_router.dart';
import 'package:ecommerce_from_scratch/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('ar')],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.signInScreen.path,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
