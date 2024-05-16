import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/splash_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'cubit/cubit/auth_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamController controller = StreamController.broadcast();
  late Timer timer;
  int val = 0;
  void startTimer() {
    timer = Timer(const Duration(seconds: 90), () {
      val++;
      controller.add(val);
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<String?> getToken() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      if (prefs.containsKey('access_token')) {
        return prefs.getString('access_token');
      } else {
        return '';
      }
    }

    return FutureBuilder(
        future: getToken(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          }
          return BlocProvider(
            create: (context) => AuthCubit(snapshot.data.toString()),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory),
              home: const SplashScreen(),
            ),
          );
        });
  }
}
