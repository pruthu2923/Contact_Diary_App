import 'package:flutter/material.dart';
import 'package:newcontactdiary/controllers/numcontroller.dart';
import 'package:newcontactdiary/controllers/themecontroller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        actions: [
          Consumer<ThemeController>(builder: (context,provider,child) => IconButton(onPressed: (){
            provider.ChangeTheme();
          }, icon: Icon((provider.CurrentTheme) ? Icons.dark_mode_rounded: Icons.light_mode_rounded)))
        ],
      ),
      body: Center(
        child: Consumer<NumController>(
          builder: (context,provider,child) => Text("${provider.Num}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Provider.of<NumController>(context,listen: false).Increase();
      },child: Icon(Icons.add),),
    );
  }
}
