import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hiver/models/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Get to page"),
          onPressed: () {
            workWithHive();
            // Navigator.pushNamed(context, '/profile',
            //     arguments: ["Data is sent"]);
          },
        ),
      ),
    );
  }

  workWithHive() async {
    User user1 = User()
      ..id = 1
      ..name = "Suhrob11";

      var userBox = await Hive.openBox('userBoxess');
      userBox.delete(0);

      userBox = await Hive.openBox('userBoxs');
      userBox.add(user1);

      print("Name ${userBox.get(0)}");
      print("Name ${userBox.getAt(0)}");
  }
}
