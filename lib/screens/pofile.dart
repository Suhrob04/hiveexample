import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  var  data;
   ProfilePage({ Key? key,this.data }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Hello");
    return Scaffold(
      appBar: AppBar(
        title:  Text(data[0].toString()),
      ),
    );
  }
}