import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/resources/observer.dart';
import 'feature/layout/presentation/screen/home_paypal_screen.dart';

void main() async {
  ///todo Basic
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = await MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'PayPal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black
        )
      ),
      home: const HomePayPal(),
    );
  }
}
