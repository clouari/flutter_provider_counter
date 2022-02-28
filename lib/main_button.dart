import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final void Function() incButtonClicked; // 안에 리턴이 있거나 하면 안에 int 를 써주면 된다.
  final void Function() redButtonClicked;

  const MainButton(
      {Key? key,
      required this.incButtonClicked,
      required this.redButtonClicked})
      : super(key: key);

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
            redButtonClicked();
          },
          child: const Icon(
            Icons.remove_outlined,
          ),
        ),
      ],
    );
  }
}
