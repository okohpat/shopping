import 'package:flutter/material.dart';
import 'package:spree/home_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
            borderSide: BorderSide(
               color: Color.fromARGB(225, 225, 225, 1),
            ),
            borderRadius: BorderRadius.horizontal(left: Radius.circular(50),),
          );
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spree',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 233, 30, 148),
          primary: Color.fromARGB(255, 233, 30, 148),),

          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            )
          ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,

          ),
          prefixIconColor: Color.fromARGB(255, 101, 100, 99),
         
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        useMaterial3: true,
      
      ),
      home: HomePage(),
    );
  }
}
