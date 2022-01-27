import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/widgets/themes.dart';
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
      theme:MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
       debugShowCheckedModeBanner: false,
       initialRoute: MyRoutes.homeroute,
      routes: {
        "/":(context)=> LoginPage(),
        MyRoutes.homeroute:(context) => HomePage(),
        MyRoutes.loginroute:(context) => LoginPage()
      },
    );
  }
}



