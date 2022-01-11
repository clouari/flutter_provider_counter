import 'package:counter/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class MainCounter extends StatelessWidget {
  const MainCounter({Key? key}) : super(key: key);

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
