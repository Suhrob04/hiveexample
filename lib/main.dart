import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiver/models/user_model.dart';
 import 'package:hiver/routes.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("hello");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     initialRoute: "/",
     onGenerateRoute: (settings) => RouteManager.generateRoute(settings),
  
     
    );}
}















