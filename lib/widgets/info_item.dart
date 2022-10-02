import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final String title;
  final String value;
  const InfoItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
        ),
      ],
    );
  }
}
