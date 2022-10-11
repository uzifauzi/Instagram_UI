import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final bool active;
  final IconData icon;
  const TabItem({
    Key? key,
    required this.active,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 1,
          color: active == true ? Colors.black : Colors.white,
        ))),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
