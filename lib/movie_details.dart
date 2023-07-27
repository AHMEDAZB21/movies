import 'package:flutter/material.dart';
import 'package:movies/utils/app_color.dart';

class MovieDetails extends StatelessWidget {
  static String routeName = "movieDetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text("Dora and the lost city of gold"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                child:
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUnTBlpdS7K7TmmrIgV75gPSNGI4ewAJUPvyM3TI8kgnMkZZofIdxVfm6JmHzcsIlkUQU&usqp=CAU",
                      fit: BoxFit.fill,
                    ),
              ),
              Icon(
                Icons.play_circle_fill_outlined,
                size: 70.0,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget play(context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      width: double.infinity,
      color: Colors.black87,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 80.0),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUnTBlpdS7K7TmmrIgV75gPSNGI4ewAJUPvyM3TI8kgnMkZZofIdxVfm6JmHzcsIlkUQU&usqp=CAU",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
              bottom: 50.0,
              left: 20.0,
              child: Container(
                width: 120.0,
                height: 150.0,
                child: Stack(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdtM_J7IojpY3J5VjvuZ0dXvm2WkxPo3_ysKtEhCpiTg&s",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Positioned(
                      top: -5,
                      left: -10,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.grey.shade800,
                            size: 45,
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),

          /// small picture
          Positioned(
            bottom: 10.0,
            left: 150.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Dora and the lost city of gold",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "July 17, 2023",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.play_circle_fill_outlined,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
