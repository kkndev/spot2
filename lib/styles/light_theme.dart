import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  extensions: const [
    AppColors(
      backgroundGlobe: AppColorsPalette.backgroundGlobe,
      backgroundAccent: AppColorsPalette.backgroundAccent,
      backgroundModal: AppColorsPalette.backgroundModal,
      buttonPrimaryDisabled: AppColorsPalette.buttonPrimaryDisabled,
      buttonPrimaryDefault: AppColorsPalette.buttonPrimaryDefault,
      buttonPrimaryPressed: AppColorsPalette.buttonPrimaryPressed,
      buttonPrimaryText: AppColorsPalette.buttonPrimaryText,
      buttonSecondaryDisabled: AppColorsPalette.buttonSecondaryDisabled,
      buttonSecondaryDefault: AppColorsPalette.buttonSecondaryDefault,
      buttonSecondaryPressed: AppColorsPalette.buttonSecondaryPressed,
      buttonSecondaryText: AppColorsPalette.buttonSecondaryText,
      buttonTertiaryDisabled: AppColorsPalette.buttonTertiaryDisabled,
      buttonTertiaryDefault: AppColorsPalette.buttonTertiaryDefault,
      buttonTertiaryPressed: AppColorsPalette.buttonTertiaryPressed,
      buttonTertiaryText: AppColorsPalette.buttonTertiaryText,
      statusSuccess: AppColorsPalette.statusSuccess,
      statusError: AppColorsPalette.statusError,
      iconsPrimary: AppColorsPalette.iconsPrimary,
      iconsSecondary: AppColorsPalette.iconsSecondary,
      iconsTertiary: AppColorsPalette.iconsTertiary,
      textPrimary: AppColorsPalette.textPrimary,
      textPrimaryInverse: AppColorsPalette.textPrimaryInverse,
      textSecondary: AppColorsPalette.textSecondary,
      strokeDefault: AppColorsPalette.strokeDefault,
      strokeFocused: AppColorsPalette.strokeFocused,
      strokeError: AppColorsPalette.strokeError,
    ),
    AppTextStyles(
      headline1: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 35,
        height: 1.25,
        fontWeight: FontWeight.w500,
        fontFamily: 'Ubuntu',
      ),
      headline2: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 24,
        height: 1.17,
        fontWeight: FontWeight.w500,
        fontFamily: 'Ubuntu',
      ),
      headline3: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 20,
        height: 1.2,
        fontWeight: FontWeight.w500,
        fontFamily: 'Ubuntu',
      ),
      subtitle1: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 16,
        height: 1.25,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w400,
        fontFamily: 'Ubuntu',
      ),
      subtitle2: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 14,
        height: 1.14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Ubuntu',
      ),
      body1: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      ),
      body2: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 14,
        height: 1.43,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      ),
      button: TextStyle(
        color: AppColorsPalette.buttonPrimaryText,
        fontSize: 14,
        height: 1.14,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        letterSpacing: 0.25,
      ),
      caption: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 12,
        height: 1.33,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      ),
      overline: TextStyle(
        color: AppColorsPalette.textPrimary,
        fontSize: 10,
        height: 1.6,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      ),
    ),
  ],
);
