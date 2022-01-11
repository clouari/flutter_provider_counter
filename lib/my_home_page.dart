import 'package:counter/main_button.dart';
import 'package:counter/main_counter.dart';
import 'package:counter/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider 적용한 counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainCounter(count: viewModel.count),
            MainButton(
              incButtonClicked: () {
                viewModel.increment();
              },
              decButtonClicked: () {
                viewModel.reduce();
              },
            ),
          ],
        ),
      ),
    );
  }
}
