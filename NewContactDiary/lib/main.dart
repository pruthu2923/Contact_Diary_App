
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:newcontactdiary/controllers/numcontroller.dart';
import 'package:newcontactdiary/controllers/themecontroller.dart';
import 'package:newcontactdiary/views/screens.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => NumController()),
      ChangeNotifierProvider(create: (context) => ThemeController()),
    ],
    child: ContactDiary(),)
  );
}

class ContactDiary extends StatelessWidget {
  const ContactDiary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
     colorSchemeSeed: Colors.amber
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      themeMode: Provider.of<ThemeController>(context).CurrentTheme ? ThemeMode.light:ThemeMode.dark  ,
      routes: {
        '/': (context) => HomePage()
      },
    );
  }
}
