import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: const [
            Text(
              'username',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.red,
                            Colors.amber,
                          ]),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://picsum.photos/536/354',
                        ),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
