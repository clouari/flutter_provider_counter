import 'package:counter/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainCounter extends StatelessWidget {
  final int count;

  const MainCounter({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.watch<MainViewModel>().count.toString(),
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
