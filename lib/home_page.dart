import 'package:flutter/material.dart';
import 'package:onboarding_app/page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/fans.png'),
              SizedBox(height: 20),
              Text(
                'Discover Something Everyday',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Text(
                  'Find other superfans near you with our hyper-local sport communities!',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: PageIndicatorDemo(),
              ),
              ElevatedButton(onPressed: () {}, child: Text('LETS GET STARTED')),
            ]),
          ),
        ));
  }
}
