import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.red,
              child: Image.asset(
                'assets/images/photo_2024-07-16_19-16-29.jpg',
                // width: 200,
                // height: 150,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://images.pexels.com/photos/920382/pexels-photo-920382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              width: 300,
              height: 300,

              fit: BoxFit.cover,
              
            ),
          )
        ],
      ),
    );
  }
}