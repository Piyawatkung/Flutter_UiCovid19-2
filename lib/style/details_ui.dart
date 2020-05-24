import 'package:flutter/material.dart';

Color mainColor = Color(0xFF2C698D);
Color subColor = Color(0xFFBAE8E8);
Color textLightColors = Color(0xFFAEAEAE);

Color amountRedColors = Color(0xFFfA0404);
Color amountBlueColors = Color(0xFF2C698D);
Color amountSubRedColors = Color(0xFFFC8C8C);
Color amountGreenColors = Color(0xFF008000);

final cardShadowColor = Color(0xFFB7B7B7).withOpacity(.16);
final subActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);

final shadowColor = Color(0xFFB7B7B7).withOpacity(.16);

const textBlodColor = Color(0xFF252525);
const textLightColor = Color(0xFFAEAEAE);

const textBlodStyle = TextStyle(fontSize: 22, color: textBlodColor);
const textLightStyle = TextStyle(fontSize: 16, color: textLightColor);

LinearGradient mainGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [subColor, mainColor],
);
