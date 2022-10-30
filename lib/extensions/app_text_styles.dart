import 'package:flutter/material.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.subtitle1,
    required this.subtitle2,
    required this.body1,
    required this.body2,
    required this.button,
    required this.caption,
    required this.overline,
  });

  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle button;
  final TextStyle caption;
  final TextStyle overline;

  @override
  AppTextStyles copyWith({
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? button,
    TextStyle? caption,
    TextStyle? overline,
  }) {
    return AppTextStyles(
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      button: button ?? this.button,
      caption: caption ?? this.caption,
      overline: overline ?? this.overline,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      headline1: TextStyle.lerp(headline1, other.headline1, t) ?? headline1,
      headline2: TextStyle.lerp(headline2, other.headline2, t) ?? headline2,
      headline3: TextStyle.lerp(headline3, other.headline3, t) ?? headline3,
      subtitle1: TextStyle.lerp(subtitle1, other.subtitle1, t) ?? subtitle1,
      subtitle2: TextStyle.lerp(subtitle2, other.subtitle2, t) ?? subtitle2,
      body1: TextStyle.lerp(body1, other.body1, t) ?? body1,
      body2: TextStyle.lerp(body2, other.body2, t) ?? body2,
      button: TextStyle.lerp(button, other.button, t) ?? button,
      caption: TextStyle.lerp(caption, other.caption, t) ?? caption,
      overline: TextStyle.lerp(overline, other.overline, t) ?? overline,
    );
  }

  // Optional
  @override
  String toString() => 'MyTextStyles('
      'headline1: $headline1,'
      'headline2: $headline2,'
      'headline3: $headline3,'
      'subtitle1: $subtitle1,'
      'subtitle2: $subtitle2,'
      'body1: $body1,'
      'body2: $body2,'
      'button: $button,'
      'caption: $caption,'
      'overline: $overline,'
      ')';
}
