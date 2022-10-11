import 'package:flutter/material.dart';

class HiglightStoryItem extends StatelessWidget {
  final String title;
  const HiglightStoryItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Column(
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
          SizedBox(
            height: 5,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
