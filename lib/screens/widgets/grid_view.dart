import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 1019,
          child: GridView.count(
              mainAxisSpacing: 56,
              crossAxisSpacing: 20,
              crossAxisCount: 3,
              childAspectRatio: 326 / 527,
              children: List.generate(
                  20,
                  (i) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFF9F9F9)),
                            child: Column(
                              children: [
                                Align(
                                  child:SvgPicture.asset(i % 2 == 0
                                      ? "assets/images/rr.svg"
                                      : 'assets/images/Heart, Favorite.svg'),
                                  alignment: Alignment.centerRight,
                                ),
                                Image.asset(
                                  "assets/images/iphone.jpg",
                                  width: 326,
                                  height: 326,
                                  fit: BoxFit.fill,
                                )
                              ],
                            ),
                          ),
                        ],
                      ))),
        ),
      ),
    );
  }
}