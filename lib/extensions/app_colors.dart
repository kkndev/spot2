import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.backgroundGlobe,
    required this.backgroundAccent,
    required this.backgroundModal,
    required this.buttonPrimaryDisabled,
    required this.buttonPrimaryDefault,
    required this.buttonPrimaryPressed,
    required this.buttonPrimaryText,
    required this.buttonSecondaryDisabled,
    required this.buttonSecondaryDefault,
    required this.buttonSecondaryPressed,
    required this.buttonSecondaryText,
    required this.buttonTertiaryDisabled,
    required this.buttonTertiaryDefault,
    required this.buttonTertiaryPressed,
    required this.buttonTertiaryText,
    required this.statusSuccess,
    required this.statusError,
    required this.iconsPrimary,
    required this.iconsSecondary,
    required this.iconsTertiary,
    required this.textPrimary,
    required this.textPrimaryInverse,
    required this.textSecondary,
    required this.strokeDefault,
    required this.strokeFocused,
    required this.strokeError,
  });

  final Color backgroundGlobe;
  final Color backgroundAccent;
  final Color backgroundModal;
  final Color buttonPrimaryDisabled;
  final Color buttonPrimaryDefault;
  final Color buttonPrimaryPressed;
  final Color buttonPrimaryText;
  final Color buttonSecondaryDisabled;
  final Color buttonSecondaryDefault;
  final Color buttonSecondaryPressed;
  final Color buttonSecondaryText;
  final Color buttonTertiaryDisabled;
  final Color buttonTertiaryDefault;
  final Color buttonTertiaryPressed;
  final Color buttonTertiaryText;
  final Color statusSuccess;
  final Color statusError;
  final Color iconsPrimary;
  final Color iconsSecondary;
  final Color iconsTertiary;
  final Color textPrimary;
  final Color textPrimaryInverse;
  final Color textSecondary;
  final Color strokeDefault;
  final Color strokeFocused;
  final Color strokeError;

  @override
  AppColors copyWith({
    Color? backgroundGlobe,
    Color? backgroundAccent,
    Color? backgroundModal,
    Color? buttonPrimaryDisabled,
    Color? buttonPrimaryDefault,
    Color? buttonPrimaryPressed,
    Color? buttonPrimaryText,
    Color? buttonSecondaryDisabled,
    Color? buttonSecondaryDefault,
    Color? buttonSecondaryPressed,
    Color? buttonSecondaryText,
    Color? buttonTertiaryDisabled,
    Color? buttonTertiaryDefault,
    Color? buttonTertiaryPressed,
    Color? buttonTertiaryText,
    Color? statusSuccess,
    Color? statusError,
    Color? iconsPrimary,
    Color? iconsSecondary,
    Color? iconsTertiary,
    Color? textPrimary,
    Color? textPrimaryInverse,
    Color? textSecondary,
    Color? strokeDefault,
    Color? strokeFocused,
    Color? strokeError,
  }) {
    return AppColors(
      backgroundGlobe: backgroundGlobe ?? this.backgroundGlobe,
      backgroundAccent: backgroundAccent ?? this.backgroundAccent,
      backgroundModal: backgroundModal ?? this.backgroundModal,
      buttonPrimaryDisabled:
          buttonPrimaryDisabled ?? this.buttonPrimaryDisabled,
      buttonPrimaryDefault: buttonPrimaryDefault ?? this.buttonPrimaryDefault,
      buttonPrimaryPressed: buttonPrimaryPressed ?? this.buttonPrimaryPressed,
      buttonPrimaryText: buttonPrimaryText ?? this.buttonPrimaryText,
      buttonSecondaryDisabled:
          buttonSecondaryDisabled ?? this.buttonSecondaryDisabled,
      buttonSecondaryDefault:
          buttonSecondaryDefault ?? this.buttonSecondaryDefault,
      buttonSecondaryPressed:
          buttonSecondaryPressed ?? this.buttonSecondaryPressed,
      buttonSecondaryText: buttonSecondaryText ?? this.buttonSecondaryText,
      buttonTertiaryDisabled:
          buttonTertiaryDisabled ?? this.buttonTertiaryDisabled,
      buttonTertiaryDefault:
          buttonTertiaryDefault ?? this.buttonTertiaryDefault,
      buttonTertiaryPressed:
          buttonTertiaryPressed ?? this.buttonTertiaryPressed,
      buttonTertiaryText: buttonTertiaryText ?? this.buttonTertiaryText,
      statusSuccess: statusSuccess ?? this.statusSuccess,
      statusError: statusError ?? this.statusError,
      iconsPrimary: iconsPrimary ?? this.iconsPrimary,
      iconsSecondary: iconsSecondary ?? this.iconsSecondary,
      iconsTertiary: iconsTertiary ?? this.iconsTertiary,
      textPrimary: textPrimary ?? this.textPrimary,
      textPrimaryInverse: textPrimaryInverse ?? this.textPrimaryInverse,
      textSecondary: textSecondary ?? this.textSecondary,
      strokeDefault: strokeDefault ?? this.strokeDefault,
      strokeFocused: strokeFocused ?? this.strokeFocused,
      strokeError: strokeError ?? this.strokeError,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      backgroundGlobe: Color.lerp(backgroundGlobe, other.backgroundGlobe, t) ??
          backgroundGlobe,
      backgroundAccent:
          Color.lerp(backgroundAccent, other.backgroundAccent, t) ??
              backgroundAccent,
      backgroundModal: Color.lerp(backgroundModal, other.backgroundModal, t) ??
          backgroundModal,
      buttonPrimaryDisabled:
          Color.lerp(buttonPrimaryDisabled, other.buttonPrimaryDisabled, t) ??
              buttonPrimaryDisabled,
      buttonPrimaryDefault:
          Color.lerp(buttonPrimaryDefault, other.buttonPrimaryDefault, t) ??
              buttonPrimaryDefault,
      buttonPrimaryPressed:
          Color.lerp(buttonPrimaryPressed, other.buttonPrimaryPressed, t) ??
              buttonPrimaryPressed,
      buttonPrimaryText:
          Color.lerp(buttonPrimaryText, other.buttonPrimaryText, t) ??
              buttonPrimaryText,
      buttonSecondaryDisabled: Color.lerp(
              buttonSecondaryDisabled, other.buttonSecondaryDisabled, t) ??
          buttonSecondaryDisabled,
      buttonSecondaryDefault:
          Color.lerp(buttonSecondaryDefault, other.buttonSecondaryDefault, t) ??
              buttonSecondaryDefault,
      buttonSecondaryPressed:
          Color.lerp(buttonSecondaryPressed, other.buttonSecondaryPressed, t) ??
              buttonSecondaryPressed,
      buttonSecondaryText:
          Color.lerp(buttonSecondaryText, other.buttonSecondaryText, t) ??
              buttonSecondaryText,
      buttonTertiaryDisabled:
          Color.lerp(buttonTertiaryDisabled, other.buttonTertiaryDisabled, t) ??
              buttonTertiaryDisabled,
      buttonTertiaryDefault:
          Color.lerp(buttonTertiaryDefault, other.buttonTertiaryDefault, t) ??
              buttonTertiaryDefault,
      buttonTertiaryPressed:
          Color.lerp(buttonTertiaryPressed, other.buttonTertiaryPressed, t) ??
              buttonTertiaryPressed,
      buttonTertiaryText:
          Color.lerp(buttonTertiaryText, other.buttonTertiaryText, t) ??
              buttonTertiaryText,
      statusSuccess:
          Color.lerp(statusSuccess, other.statusSuccess, t) ?? statusSuccess,
      statusError: Color.lerp(statusError, other.statusError, t) ?? statusError,
      iconsPrimary:
          Color.lerp(iconsPrimary, other.iconsPrimary, t) ?? iconsPrimary,
      iconsSecondary:
          Color.lerp(iconsSecondary, other.iconsSecondary, t) ?? iconsSecondary,
      iconsTertiary:
          Color.lerp(iconsTertiary, other.iconsTertiary, t) ?? iconsTertiary,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textPrimaryInverse:
          Color.lerp(textPrimaryInverse, other.textPrimaryInverse, t) ??
              textPrimaryInverse,
      textSecondary:
          Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      strokeDefault:
          Color.lerp(strokeDefault, other.strokeDefault, t) ?? strokeDefault,
      strokeFocused:
          Color.lerp(strokeFocused, other.strokeFocused, t) ?? strokeFocused,
      strokeError: Color.lerp(strokeError, other.strokeError, t) ?? strokeError,
    );
  }

  // Optional
  @override
  String toString() => 'MyColors('
      'backgroundGlobe: $backgroundGlobe,'
      'backgroundAccent: $backgroundAccent,'
      'backgroundModal: $backgroundModal,'
      'buttonPrimaryDisabled: $buttonPrimaryDisabled,'
      'buttonPrimaryDefault: $buttonPrimaryDefault,'
      'buttonPrimaryPressed: $buttonPrimaryPressed,'
      'buttonPrimaryText: $buttonPrimaryText,'
      'buttonSecondaryDisabled: $buttonSecondaryDisabled,'
      'buttonSecondaryDefault: $buttonSecondaryDefault,'
      'buttonSecondaryPressed: $buttonSecondaryPressed,'
      'buttonSecondaryText: $buttonSecondaryText,'
      'buttonTertiaryDisabled: $buttonTertiaryDisabled,'
      'buttonTertiaryDefault: $buttonTertiaryDefault,'
      'buttonTertiaryPressed: $buttonTertiaryPressed,'
      'buttonTertiaryText: $buttonTertiaryText,'
      'statusSuccess: $statusSuccess,'
      'statusError: $statusError,'
      'iconsPrimary: $iconsPrimary,'
      'iconsSecondary: $iconsSecondary,'
      'iconsTertiary: $iconsTertiary,'
      'textPrimary: $textPrimary,'
      'textPrimaryInverse: $textPrimaryInverse,'
      'textSecondary: $textSecondary,'
      'strokeDefault: $strokeDefault,'
      'strokeFocused: $strokeFocused,'
      'strokeError: $strokeError,';
}
