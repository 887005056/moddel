import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class Probox extends StatefulWidget {
  const Probox({super.key});

  @override
  State<Probox> createState() => _Probox1ScreenState();
}

class _Probox1ScreenState extends State<Probox> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset('Assents/logo-01 (1).png'),
            
              IconButton(
                icon: Icon(Icons.apps_outlined),
                onPressed: () {},
              ),
             
              IconButton(
                icon: Icon(Icons.search), 
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {},
              ),
              SizedBox(width: 10,),
              IconButton(
                icon: Icon(Icons.shopping_bag_outlined), 
                onPressed: () {},
              ),
              SizedBox(width: 10,),
              IconButton(
                icon: Icon(Icons.person_outline_rounded), 
                onPressed: () {},
              ),
              SizedBox(width: 10,),
              IconButton(
                icon: Icon(Icons.language),
                onPressed: () {},
              ),
              SizedBox(width: 10,),
              Text("Py"),
              SizedBox(width: 10,),
            ]),
          )),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(children: [
                SizedBox(
                  height: 138,
                ),
                Text(
                  'Probox Store. The best way to buy the products you love.Probox Store. The best way to buy the products you love.' ,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
         
                Row(
                  children: [
                    Text(
                        "Probox Store. The best way to buy the products you love.Probox Store. The best way to buy the products you love."),
                  ],
                ),
                Image.network(
                  'Assents/Apple-Iphone-15-Pro-PNG 1 (1).png', 
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Купить'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Оставить заявку'),
                      style: ElevatedButton.styleFrom(


foregroundColor: Colors.blue,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_left), // Chap strelka
                      onPressed: () {},
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_right), // O'ng strelka
                        onPressed: () {}),
                  ],
                ),
              ]),
            ],
          )),
    );
  }
}