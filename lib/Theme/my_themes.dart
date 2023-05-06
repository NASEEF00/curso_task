import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    textTheme: lightTextTheme,
    cardTheme: lightCardTheme,
    appBarTheme: lightAppbarTheme,
    floatingActionButtonTheme: lightFloatingActionTheme,

  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: darkColorScheme,
    textTheme: darkTextTheme,
    cardTheme: darkCardTheme,
    appBarTheme: darkAppbarTheme,
    floatingActionButtonTheme: darkfloatingActionTheme,
  );
}

const lightColorScheme = ColorScheme(
  // Layers from bottom to top
  background: Color.fromARGB(255, 255, 255, 255),
  surface: Color.fromARGB(255, 179, 179, 179),
  onBackground: Color(0xFF212121),
  onSurface: Color(0xFF212121),
  surfaceVariant: Color(0xFF9C27B0),
  onSurfaceVariant: Color.fromARGB(255, 58, 58, 58),
  primary: Colors.black,
  onPrimary: Color.fromARGB(255, 245, 245, 245),
  primaryContainer: Color.fromARGB(255, 208, 15, 31), // light pink
  onPrimaryContainer: Color(0xFF212121),
  secondary: Color.fromARGB(255, 133, 0, 0),
  onSecondary: Color.fromARGB(255, 231, 3, 3),
  secondaryContainer: Color.fromARGB(255, 242, 178, 178), // light cyan
  onSecondaryContainer: Color(0xFF212121),
  tertiary: Color(0xFF9C27B0),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color.fromARGB(255, 255, 255, 255), // light purple
  onTertiaryContainer: Color(0xFF212121),
  error: Color(0xFFF44336),
  onError: Color.fromARGB(255, 245, 245, 245),
  errorContainer: Color.fromARGB(255, 245, 245, 245), // light red
  onErrorContainer: Color(0xFF212121),
  inverseSurface: Color(0xFF212121),
  onInverseSurface: Color.fromARGB(255, 134, 134, 134),
  inversePrimary: Color.fromARGB(255, 114, 0, 0),
  scrim: Color(0x99000000),
  shadow: Color(0xFF000000), // black
  outline: Color(0xFF795548),
  surfaceTint: Colors.white,
  brightness: Brightness.light,

  outlineVariant: Color(0xFF795548),
);

const darkColorScheme = ColorScheme(
  // Background colors
  background: Color.fromARGB(255, 22, 22, 22), // dark grey
  onBackground: Color.fromARGB(255, 255, 255, 255), // white
  scrim: Color(0x99000000),

  // Surface colors
  surface: Color.fromRGBO(27, 27, 27, 1), // dark grey
  onSurface: Color.fromARGB(255, 255, 255, 255), // white
  surfaceVariant: Color(0xFF795548),
  onSurfaceVariant: Color.fromARGB(255, 117, 117, 117),
  inverseSurface: Color(0xFFFFFFFF),
  onInverseSurface: Color(0xFF212121),
  surfaceTint: Color.fromARGB(255, 180, 3, 62),
  primary: Colors.white,
  onPrimary: Color.fromARGB(255, 224, 224, 224), // white
  primaryContainer: Color.fromARGB(255, 119, 0, 0),
  onPrimaryContainer: Color.fromARGB(255, 255, 255, 255), // white
  inversePrimary: Color.fromARGB(255, 138, 0, 46),

  // Secondary colors
  secondary: Color(0xFFF44336), // red
  onSecondary: Color.fromARGB(255, 19, 19, 19), // dark grey
  secondaryContainer: Color.fromARGB(255, 0, 0, 0),
  onSecondaryContainer: Color.fromARGB(255, 255, 255, 255), // white

  // Tertiary colors
  tertiary: Color(0xFF9C27B0),
  onTertiary: Color(0xFF212121),
  tertiaryContainer: Color(0xFF6A1B9A),
  onTertiaryContainer: Color.fromARGB(255, 255, 255, 255),

  // Error colors
  error: Color(0xFFB71C1C), // dark red
  onErrorContainer: Color.fromARGB(255, 255, 255, 255), // white
  onError: Color(0xFFFFFFFF), // white
  errorContainer: Color(0xFFD32F2F),

  // Other colors
  outline: Color(0xFF795548),
  outlineVariant: Color(0xFF9E9E9E),
  shadow: Color(0xFF000000), brightness: Brightness.dark,

  // white
);

const lightTextTheme = TextTheme(
  bodyLarge: TextStyle(color: Colors.black),
  bodyMedium: TextStyle(color: Colors.black),
  bodySmall: TextStyle(color: Colors.black),
  titleLarge: TextStyle(color: Colors.black),
  titleMedium: TextStyle(color: Colors.black),
  titleSmall: TextStyle(color: Colors.black),
  headlineLarge: TextStyle(color: Colors.black),
  headlineMedium: TextStyle(color: Colors.black),
  headlineSmall: TextStyle(color: Colors.black),
  labelLarge: TextStyle(color: Colors.black),
  labelMedium: TextStyle(color: Colors.black),
  labelSmall: TextStyle(color: Colors.black),
);

const darkTextTheme = TextTheme(
  bodyLarge: TextStyle(color: Colors.white),
  bodyMedium: TextStyle(color: Colors.white),
  bodySmall: TextStyle(color: Colors.white),
  titleLarge: TextStyle(color: Colors.white),
  titleMedium: TextStyle(color: Colors.white),
  titleSmall: TextStyle(color: Colors.white),
  headlineLarge: TextStyle(color: Colors.white),
  headlineMedium: TextStyle(color: Colors.white),
  headlineSmall: TextStyle(color: Colors.white),
  labelLarge: TextStyle(color: Colors.white),
  labelMedium: TextStyle(color: Colors.white),
  labelSmall: TextStyle(color: Colors.white),
);

const lightCardTheme = CardTheme(
  color: Colors.white,
  elevation: 2,
  shadowColor: Colors.black38,
);

const darkCardTheme = CardTheme(
  color: Colors.black54,
  elevation: 2,
  surfaceTintColor: Colors.black,
  shadowColor: Colors.blueGrey,
);

const lightAppbarTheme = AppBarTheme(
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    titleTextStyle: TextStyle(color: Colors.black),
    elevation: 0,iconTheme: IconThemeData(color: Colors.black));

const darkAppbarTheme = AppBarTheme(
    backgroundColor: Color(0xFF212121),
    titleTextStyle: TextStyle(color: Colors.white),
elevation: 0);

FloatingActionButtonThemeData lightFloatingActionTheme = FloatingActionButtonThemeData(
    backgroundColor: Colors.grey.shade700,

);

 FloatingActionButtonThemeData darkfloatingActionTheme = FloatingActionButtonThemeData(
   backgroundColor: Colors.grey.shade600
 );


