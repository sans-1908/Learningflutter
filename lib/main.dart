import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firstapp/utilis/routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
       // brightness: Brightness.dark,
       // primarySwatch: Colors.deepPurple,
      ),
     // initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        MyRoutes.homeroute:(context) => HomePage(),
        MyRoutes.loginroute:(context) => LoginPage()
      },
    );
  }
}



