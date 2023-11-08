part of '../import/u_imports_app.dart';

class UtilsSettingTheme {
  /// [light] return theme light screen
  static ThemeData light() {
    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.light(primary: UtilsColor.purple),
      // appBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: UtilsColor.redAccent,
        titleTextStyle:
            GoogleFonts.blackOpsOne(fontSize: 35, color: UtilsColor.white),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(size: 35, color: UtilsColor.white),
      ),
    );
  }

  /// [dark] return theme dark Screen

  static ThemeData dark() {
    return ThemeData.dark(useMaterial3: true).copyWith(
      // appBar theme
      appBarTheme: AppBarTheme(
        elevation: 5,
        centerTitle: true,
        titleTextStyle: GoogleFonts.blackOpsOne(fontSize: 35),
      ),
    );
  }
}
