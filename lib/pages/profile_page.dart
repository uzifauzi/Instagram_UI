import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/info_item.dart';
import 'package:instagram_ui/widgets/profile_picture.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(
                        title: '31',
                        value: 'Post',
                      ),
                      InfoItem(
                        title: '0102',
                        value: 'Followers',
                      ),
                      InfoItem(
                        title: '11',
                        value: 'Following',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'fxzi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Developer',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: RichText(
              text: TextSpan(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin mauris ut hendrerit aliquam.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Aenean sollicitudin mauris ut hendrerit aliquam.",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "#GGMU",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'bit.ly/fxzi.dev',
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Container(
                        width: 77,
                        height: 77,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white,
                            width: 5,
                          ),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://picsum.photos/536/354',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
