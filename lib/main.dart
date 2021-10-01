import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.antiAlias,
      children: [
        Positioned.fill(
            child: Image.asset('assets/bakr2.png', fit: BoxFit.cover)),
        //SizedBox(height: MediaQuery.of(context).size.width / 8),
        Positioned(
          top: 0,
          left: 0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 18),
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                  label: const Text(
                    "Back",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
