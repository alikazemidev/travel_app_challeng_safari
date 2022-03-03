import 'package:flutter/material.dart';

class topIcons extends StatelessWidget {
  const topIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white.withOpacity(.3),
            onPressed: (() {}),
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.white.withOpacity(.3),
            onPressed: (() {}),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
