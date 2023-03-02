import 'package:animationappfinal/cubegrid.dart';
// import 'package:animationappfinal/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return _loading == true
        ? const FadingCubeScreen()
        : Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _loading = true;
                        });
                        await Future.delayed(const Duration(seconds: 120));
                        setState(() {
                          _loading = false;
                        });
                      },
                      child: const Text("Start"))
                ],
              ),
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
          );
  }
}
