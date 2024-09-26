import 'package:flutter/material.dart';

class ListViewWidder extends StatefulWidget {
  const ListViewWidder({super.key});

  @override
  State<ListViewWidder> createState() => _ListViewWidderState();
}

class _ListViewWidderState extends State<ListViewWidder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("My list view builder"),),
      body: Center(
         child:SizedBox(
          width: 3000,
        child: ListView.builder(
          itemCount: 20,
       itemBuilder: (context,index){
        return    ListTile(
        
           leading: CircleAvatar(
              child: Image.asset("assets/images/rasm.jpeg"),
              backgroundColor: const Color.fromARGB(255, 40, 47, 40) ,
            ),
           title: Text('dastur'),
            trailing: Icon(Icons.camera_alt));

       },
        )
          ),
      )
        );
  }
}