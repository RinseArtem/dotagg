import 'package:flutter/material.dart';

lightTheme() => ThemeData(
  fontFamily: 'Mulish',
  scaffoldBackgroundColor: const Color(0xff161616),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xffF63D68),
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w500,
      color: Color(0xffB6B6B6)
    ),
    bodyLarge: TextStyle(
      color: Color(0xffB6B6B6)
    ),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff1E1E1E),
    foregroundColor: Color(0xffEAECF0),
    toolbarHeight: 52,
    titleTextStyle: TextStyle(
      color: Color(0xffEAECF0),
      fontSize: 14
    ),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.white,
  ),
  
  badgeTheme: const BadgeThemeData(
    backgroundColor: Color(0xffF63D68),
  ),

  cardTheme: const CardTheme(
    surfaceTintColor: Color(0xff1E1E1E),
    color: Color(0xff1E1E1E),
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff1E1E1E),
    selectedIconTheme: IconThemeData(
      color: Color(0xffF63D68),
    ),
    unselectedIconTheme: IconThemeData(
      color: Color(0xff667085)
    ),
    selectedItemColor: Colors.white,
    unselectedItemColor: Color(0xff667085)
  ),

  tabBarTheme: const TabBarTheme(
    dividerHeight: 0,
    labelPadding: EdgeInsets.symmetric(vertical: 6),
    labelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    unselectedLabelColor: Color(0xff5D5C64),
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xffF63D68),
          width: 2
        )
      )
    )
  ),

  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))
        )
      ),
      backgroundColor: MaterialStatePropertyAll(Color(0xffF63D68)),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
  
  dividerTheme: DividerThemeData(
    color: const Color(0xff5D5C64).withOpacity(.35),
  ),

  iconTheme: const IconThemeData(
    color: Color(0xff667085)
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xffF63D68),
    foregroundColor: Colors.white,
    iconSize: 18
  ),
  
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(

    )
  )
);

