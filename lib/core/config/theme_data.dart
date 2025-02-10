import 'package:code_editor/core/resource/my_colors.dart';
import 'package:code_editor/core/resource/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  static const fontName = 'vazirmatn';

  static ThemeData createTheme({
    required Brightness brightness,
    required Color background,
    required Color primaryText,
    required Color secondaryText,
    required Color accentColor,
    required Color divider,
    required Color buttonBackground,
    required Color buttonText,
    required Color cardBackground,
    required Color disabled,
    required Color error,
    required Color textButtonColor,
    required Color hintColor,
    required Color checkBoxColor,
    required Color iconColor,
    required Color textFieldBorderColor,
    required Color activeTextTabColor,
    required Color deActiveTextTabColor,
    required Color indicatorTabColor,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.blackMountainView
        : Typography.whiteMountainView;

    return ThemeData(
      useMaterial3: true,
      fontFamily: ThemeConfig.fontName,
      primarySwatch: MyColors.primary,
      brightness: brightness,
      canvasColor: background,
      cardColor: cardBackground,

      scaffoldBackgroundColor: background,
      dividerColor: divider,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: MyColors.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          // backgroundColor: MyColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: divider,
        space: 1,
        thickness: 1,
      ),
      cardTheme: CardTheme(
        color: cardBackground,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      checkboxTheme: CheckboxThemeData(
        side: MaterialStateBorderSide.resolveWith((states) => BorderSide.none),
        checkColor: MaterialStateProperty.all<Color>(checkBoxColor),
        fillColor: MaterialStateProperty.all<Color>(MyColors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      tabBarTheme: TabBarTheme(
          labelColor: activeTextTabColor,
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: primaryText,
              fontFamily: ThemeConfig.fontName),
          labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: primaryText,
              fontFamily: ThemeConfig.fontName), // color for text
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: indicatorTabColor))),
      // backgroundColor: background,
      primaryColor: accentColor,
      // accentColor: accentColor,
      // toggleableActiveColor: accentColor,
      appBarTheme: AppBarTheme(
        // brightness: brightness,
        color: background,

        iconTheme: IconThemeData(
          size: 20,
          color: iconColor,
        ),
        titleTextStyle: Text500Style.h5.copyWith(
          color: primaryText,
          fontFamily: fontName,
          letterSpacing: 0,
        ),
      ),
      iconTheme: IconThemeData(
        color: iconColor,
        size: 16.0,
      ),
      // errorColor: error,
      buttonTheme: ButtonThemeData(
        buttonColor: buttonBackground,
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme(
          brightness: brightness,
          primary: accentColor,
          // primaryVariant: accentColor,
          secondary: accentColor,
          outline: textFieldBorderColor,
          // secondaryVariant: accentColor,
          surface: background,
          background: background,
          error: error,
          onPrimary: buttonText,
          onSecondary: buttonText,
          onSurface: buttonText,
          onBackground: buttonText,
          onError: buttonText,
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: baseTextTheme.headlineSmall!.copyWith(
          color: primaryText,
          fontFamily: ThemeConfig.fontName,
          letterSpacing: 0,
        )),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: brightness,
        primaryColor: accentColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(color: error),
        labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
            color: primaryText,
            fontFamily: ThemeConfig.fontName),
        hintStyle: TextStyle(
          color: hintColor,
          fontSize: 13.0,
          fontWeight: FontWeight.w300,
          fontFamily: ThemeConfig.fontName,
        ),
        contentPadding: const EdgeInsets.all(0),
        fillColor: cardBackground,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: textFieldBorderColor)),
      ),
      textTheme: TextTheme(
        bodyLarge: baseTextTheme.bodyLarge!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        bodyMedium: baseTextTheme.bodyMedium!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        bodySmall: baseTextTheme.bodySmall!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        displaySmall: baseTextTheme.displaySmall!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        displayLarge: baseTextTheme.displayLarge!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        displayMedium: baseTextTheme.displayMedium!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        headlineSmall: baseTextTheme.headlineSmall!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        headlineMedium: baseTextTheme.headlineMedium!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
        headlineLarge: baseTextTheme.headlineLarge!.copyWith(
          color: secondaryText,
          letterSpacing: 0,
          fontFamily: ThemeConfig.fontName,
        ),
      ),
    );
  }

  static ThemeData get lightTheme => createTheme(
        brightness: Brightness.light,
        background: MyColors.backgroundMain,
        cardBackground: MyColors.backgroundWhite,
        primaryText: MyColors.textMain,
        secondaryText: MyColors.textMain,
        accentColor: MyColors.primary,
        divider: MyColors.strokeMain,
        buttonBackground: MyColors.primary,
        buttonText: MyColors.strokeMain,
        disabled: MyColors.strokeMain,
        error: MyColors.danger,
        textButtonColor: MyColors.strokeMain,
        hintColor: MyColors.strokeMain,
        checkBoxColor: MyColors.strokeMain,
        iconColor: MyColors.textMain,
        textFieldBorderColor: MyColors.strokeMain,
        activeTextTabColor: MyColors.primary,
        deActiveTextTabColor: MyColors.strokeMain,
        indicatorTabColor: MyColors.primary,
      );

  static ThemeData get darkTheme => createTheme(
        brightness: Brightness.dark,
        background: MyColors.backgroundDark,
        cardBackground: MyColors.cardDark,
        primaryText: MyColors.textWhite,
        secondaryText: MyColors.textWhite,
        accentColor: MyColors.primary,
        divider: MyColors.borderDark,
        buttonBackground: MyColors.primary,
        buttonText: MyColors.textWhite,
        disabled: MyColors.strokeMain,
        error: MyColors.danger,
        textButtonColor: MyColors.textWhite,
        hintColor: MyColors.textWhite,
        checkBoxColor: MyColors.textWhite,
        iconColor: MyColors.textWhite,
        textFieldBorderColor: MyColors.borderDark,
        activeTextTabColor: MyColors.primary,
        deActiveTextTabColor: MyColors.textWhite,
        indicatorTabColor: MyColors.primary,
      );
}
