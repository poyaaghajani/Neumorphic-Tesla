import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';

abstract class AppTheme {
  static NeumorphicThemeData darkTheme = NeumorphicThemeData(
    textTheme: TextTheme(
      displaySmall: GoogleFonts.lato(
        fontSize: 15,
        color: TextColors.textBodySmallColor,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: GoogleFonts.lato(
        fontSize: 20,
        color: TextColors.textLargeLabelColor,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: GoogleFonts.lato(
        fontSize: 150,
        color: TextColors.textLargeLabelColor,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: GoogleFonts.lato(
        fontSize: 24,
        color: TextColors.textBodySmallColor,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: GoogleFonts.lato(
        fontSize: 40,
        color: TextColors.textBodyLargeColor,
        fontWeight: FontWeight.w900,
      ),
      titleSmall: GoogleFonts.lato(
        fontSize: 15,
        color: TextColors.textBodyLargeColor,
        fontWeight: FontWeight.w900,
      ),
      headlineSmall: GoogleFonts.lato(
        fontSize: 12,
        color: TextColors.textBodySmallColor,
        fontWeight: FontWeight.w900,
      ),
      bodyMedium: GoogleFonts.lato(
        fontSize: 20,
        color: TextColors.textBodyLargeColor,
        fontWeight: FontWeight.w900,
      ),
      displayMedium: GoogleFonts.roboto(
        fontSize: 40,
        color: TextColors.textBodyLargeColor,
        fontWeight: FontWeight.w900,
      ),
    ),
    baseColor: AppColors.neumorphicBackgroundColor,
    lightSource: LightSource.topLeft,
    depth: 6,
  );
}
