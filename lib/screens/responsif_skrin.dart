import 'package:flutter/material.dart';

class ResponsifSkrin extends StatefulWidget {
  const ResponsifSkrin({super.key});

  @override
  State<ResponsifSkrin> createState() => _ResponsifSkrinState();
}

class _ResponsifSkrinState extends State<ResponsifSkrin> {
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(child: Container(color: Colors.green,),),
      body: LayoutBuilder(builder: (context, boxConstrains){
        final double maxWidth = boxConstrains.maxWidth;
       if(maxWidth> 1100){
         return Row(children: [
           Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset(
                       "assets/images/iphone.jpg"),
                   Container(
                     color: Colors.yellow,
                     width: size.width * 0.5,
                     height: size.height * 0.3,
                   ),
                 ],
               )
             ],
           )
         ],);
       } else if(maxWidth >= 650){
         return Column(
           children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset(
                     "assets/images/2fe66a2f55d16f8d806ac179a23206d0.png"),
                 Container(
                   color: Colors.yellow,
                   width: size.width * 0.5,
                   height: size.height * 0.3,
                 ),
               ],
             )
           ],
         );
       }else{
         return Center(child: Text("Telefon uchun"),);
       }
      })

    );
  }
}
