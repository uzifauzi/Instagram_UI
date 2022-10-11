import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/higlight_story_item.dart';
import 'package:instagram_ui/widgets/info_item.dart';
import 'package:instagram_ui/widgets/profile_picture.dart';
import 'package:instagram_ui/widgets/tab_item.dart';

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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HiglightStoryItem(
                    title: 'Story 1',
                  ),
                  HiglightStoryItem(
                    title: 'Story 2',
                  ),
                  HiglightStoryItem(
                    title: 'Story 3',
                  ),
                  HiglightStoryItem(
                    title: 'Story 4',
                  ),
                  HiglightStoryItem(
                    title: 'Story 5',
                  ),
                  HiglightStoryItem(
                    title: 'Story 6',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(
                active: true,
                icon: Icons.grid_on,
              ),
              TabItem(
                active: false,
                icon: Icons.person_pin_circle,
              ),
            ],
          ),
          GridView.builder(
            //supaya bisa dipakai didalam listview
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              'https://picsum.photos/536/354',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
