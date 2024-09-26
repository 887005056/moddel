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
        side: const BorderSide(width: 5,color: Color.fromARGB(255, 4, 4, 1)),
        ),
        onPressed: () {print("ztugma bosildi");}, child: Text("My button")
        ),
        ),
        SizedBox(height: 30,),
        TextButton(onPressed: () {}, child: Text("Text Butten"),
        style: TextButton.styleFrom(backgroundColor: Colors.green)

        ),
        SizedBox(width: 250, height: 100,),
        IconButton(onPressed: () {}, icon:Image.asset("assets/images/rasm.jpeg",width:300, height:400,) )
        
      
      ],
      )
      ),
      floatingActionButton: FloatingActionButton(onPressed:() {} ,
    
      ),
    );
  }
}