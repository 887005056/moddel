// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// class AlbumScreen extends StatefulWidget {
//   const AlbumScreen({super.key});

//   @override
//   State<AlbumScreen> createState() => _AlbumScreenState();
// }

// class _AlbumScreenState extends State<AlbumScreen> {
//   final Dio dio = Dio();

//   Future<List<AlbumModel>> getAlbums() async {
//     final Response response = await dio.get(
//       'https://jsonplaceholder.typicode.com/photos',
//     );
//     if (response.data != null) {
//       final List<AlbumModel> albums = (response.data as List).map((e) {
//         return AlbumModel.fromJson(e);
//       }).toList();
//       return albums;
//     } else {
//       return <AlbumModel>[];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getAlbums(),
//         builder:
//             (BuildContext context, AsyncSnapshot<List<AlbumModel>> snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(itemBuilder: (context, i) {
//               final AlbumModel album = snapshot.data![i];
//               return GestureDetector(
//                 onTap: (){

//                 },
//                 child: Card(
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 30,
//                         child: Image.network(
//                           'https://plus.unsplash.com/premium_photo-1724088683996-99c7429b396b?q=80&w=2671&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(album.title)
//                     ],
//                   ),
//                 ),
//               );
//             });
//           } else if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             return Center(
//               child: Text(snapshot.error.toString()),
//             );
//           }
//         },
//       ),
//     );
//   }
// }