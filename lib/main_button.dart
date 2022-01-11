import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Function incButtonClicked;
  final Function decButtonClicked;

  const MainButton({
    Key? key,
    required this.incButtonClicked,
    required this.decButtonClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            incButtonClicked();
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 30,
        ),
        ElevatedButton(
          onPressed: () {
            decButtonClicked();
          },
          child: const Icon(
            Icons.remove_outlined,
          ),
        ),
      ],
    );
  }
}
