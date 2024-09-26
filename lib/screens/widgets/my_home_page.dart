import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
   backgroundColor: Colors.yellowAccent,
   appBar: AppBar(
    elevation: 10.0,
backgroundColor: Colors.green,
title: Text('Dastur'),
centerTitle: true,
   ),
   body: Image.network('https://s3.wasabisys.com/instax/74/instax/2023/03/foto-de-por-do-sol-1678156462-2048x1365.jpeg',)
  );
   
  }

}