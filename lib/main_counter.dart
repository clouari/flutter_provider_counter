import 'package:flutter/material.dart';

class MainCounter extends StatelessWidget {
  final int count;

  const MainCounter({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$count',
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
