import 'package:ecommerce_from_scratch/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.white,
      onPrimary: AppColors.primaryTextColor,
      secondary: AppColors.blue,
      onSecondary: AppColors.white,
      primaryContainer: AppColors.white,
      error: Colors.red,
      onError: AppColors.white,
      surface: AppColors.blue,
      onSurface: AppColors.white,
    ),

    // Global Text Theme
    textTheme: GoogleFonts.poppinsTextTheme(
      const TextTheme(
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
    ),

    // UPDATED: Global Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),

      // The hint style you requested
      hintStyle: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryTextColor,
      ),

      labelStyle: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryTextColor,
      ),

      prefixIconColor: AppColors.prefixIconColor,
      suffixIconColor: AppColors.suffixIconColor,

      // Consistent 16px border radius across the app
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.blue, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.errorRedColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: AppColors.errorRedColor,
          width: 1.5,
        ),
      ),
    ),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.blue,
      selectionColor: AppColors.blue.withValues(alpha: 0.2),
      selectionHandleColor: AppColors.blue,
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        shadowColor: AppColors.white.withValues(alpha: 0.1),
        overlayColor: AppColors.white.withValues(alpha: 0.1),
      ),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 12),
        minimumSize: const Size(double.infinity, 56),
        textStyle: GoogleFonts.vazirmatn(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),

    dividerTheme: DividerThemeData(
      thickness: 1.5,
      color: AppColors.textFieldBorderColor,
      radius: BorderRadius.circular(16),
    ),

    expansionTileTheme: const ExpansionTileThemeData(
      collapsedBackgroundColor: Color(0xFFF0F0F0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),

    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),

    tabBarTheme: TabBarThemeData(
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      labelPadding: EdgeInsets.zero,
      labelColor: AppColors.white,
      unselectedLabelColor: AppColors.blue,
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontFamily: GoogleFonts.vazirmatn().fontFamily,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: GoogleFonts.vazirmatn().fontFamily,
      ),
      dividerColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
    ),

    // DropdownMenu Theme - now also inherits the 16px radius
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: GoogleFonts.vazirmatn(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryTextColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.blue, width: 1.5),
        ),
      ),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.white),
        elevation: WidgetStateProperty.all(4),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    ),
  );
}
