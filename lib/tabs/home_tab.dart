import 'package:flutter/material.dart';
import 'package:movies/movie_details.dart';

import '../utils/app_color.dart';

class HomeTab extends StatefulWidget {

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, MovieDetails.routeName);
          },
          child: play(),),
        const SizedBox(
          height: 24.0,
        ),
        newReleased(),
        const SizedBox(
          height: 30.0,
        ),
        recomended(),
      ],
    );
  }

  Widget play() {
    return Container(
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
              bottom: 20.0,
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
          Positioned(
            bottom: 10.0,
            left: 150.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Dora",
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

  Widget newReleased() {
    return Container(
      color: AppColors.newReleased,
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Stack(children: [
            Card(
              color: AppColors.newReleased,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdtM_J7IojpY3J5VjvuZ0dXvm2WkxPo3_ysKtEhCpiTg&s",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
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
          ]);
        },
        itemCount: 10,
      ),
    );
  }

  Widget recomended() {
    return Container(
      color: AppColors.newReleased,
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Stack(children: [
            Card(
              color: AppColors.newReleased,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdtM_J7IojpY3J5VjvuZ0dXvm2WkxPo3_ysKtEhCpiTg&s",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
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
          ]);
        },
        itemCount: 10,
      ),
    );
  }
}
