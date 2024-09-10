import 'package:amazon_clone/utils/theme/custom_themes/appbar_theme.dart';
import 'package:amazon_clone/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:amazon_clone/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:amazon_clone/utils/theme/custom_themes/chip_theme.dart';
import 'package:amazon_clone/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:amazon_clone/utils/theme/custom_themes/text_theme.dart';
import 'package:amazon_clone/utils/theme/custom_themes/textformfield_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,

  );
  static  ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.orange,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,

  );
}