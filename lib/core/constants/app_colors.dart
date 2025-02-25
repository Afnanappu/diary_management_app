import 'dart:ui';

// class AppColors {
//   static const Color primary = Color(0xFF04C4B4);
//   // static const Color primary = Color(0xFF028A82);
//   static const Color onPrimary = Color(0xFFFFFFFF);
//   static const Color primaryBackground = Color(0xFFDCF4EC);
// }

class AppColors {
  // static const Color primary = Color(0xFF04C4B4); // Teal (Main Theme Color)
  static const Color primary = Color(0xFF02A99E); // Teal (Main Theme Color)
  // static const Color primary = Color(
  //   0xFF028A82,
  // ); // Darker shade for contrast
  static const Color onPrimary = Color(
    0xFFFFFFFF,
  ); // Text/icons on primary color
  static const Color primaryBackground = Color(
    0xFFDCF4EC,
  ); // Light teal background

  static const Color secondary = Color(
    0xFF8D6E63,
  ); // Milk Chocolate Brown (Accent)
  static const Color onSecondary = Color(
    0xFFFFFFFF,
  ); // White text/icons on secondary

  static const Color background = Color(0xFFF8F8F8); // Soft Creamy White
  static const Color surface = Color(
    0xFFFFFFFF,
  ); // Pure White for cards/containers
  static const Color onSurface = Color(
    0xFF333333,
  ); // Dark text/icons on white surfaces

  static const Color error = Color(0xFFE57373); // Soft Red for warnings/errors
  static const Color onError = Color(
    0xFFFFFFFF,
  ); // White text/icons on error color

  static const Color success = Color(0xFF4CAF50); // Green for success messages
  static const Color warning = Color(0xFFFFA726); // Orange for warnings

  static const Color disabled = Color(
    0xFFBDBDBD,
  ); // Gray for disabled buttons/text
}
