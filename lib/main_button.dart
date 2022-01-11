import 'package:counter/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<MainViewModel>().increment();
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 30,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<MainViewModel>().reduce();
          },
          child: const Icon(
            Icons.remove_outlined,
          ),
        ),
      ],
    );
  }
}
