import 'package:counter/main_view_model.dart';
import 'package:counter/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

// MyApp 과 MyHomePage 에 각각 MainViewModel 이 꽂혀 있는데,
// 지금 나와 있는 코드에서는 꽂혀있는 1번 과 2번 MainViewModel 중
// MainCounter 과 MainButton 은 더 가까이 있는 2번을 사용하게 된다.
