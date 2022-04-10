import 'dart:async';

import 'package:flutter/material.dart';
import 'package:justhere/page/home_page.dart';

class TransitPage extends StatefulWidget {
  const TransitPage({Key? key}) : super(key: key);

  @override
  _TransitPageState createState() => _TransitPageState();
}

class _TransitPageState extends State<TransitPage> {
  int _currentTimerCount = 6;
  // ignore: unused_field
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
        _currentTimerCount--;
      });

      if (_currentTimerCount <= 0) {
        _timer.cancel();
        _jumpHomePage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/transit_default.jpeg',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }

  void _jumpHomePage() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext contenxt) => HomePage()),
        (route) => false);
  }
}
