
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children:[
        SizedBox
        (width: 200,
        height: 100,
       child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        side: const BorderSide(width: 5,color: Color(0xFF3D82D0)),
        ),
        onPressed: () {print("ztugma bosildi");}, child: Text("assets/images/images.png")
        

       )
      ),
       ]
        ),
  
      ),
    );
    
    }  
    }