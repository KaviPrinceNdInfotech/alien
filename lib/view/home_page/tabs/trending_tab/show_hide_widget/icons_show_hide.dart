import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowHidePage extends StatefulWidget {
  const ShowHidePage({Key? key}) : super(key: key);

  @override
  _ShowHidePageState createState() => _ShowHidePageState();
}

class _ShowHidePageState extends State<ShowHidePage> {
  String _text = 'Please wait...';

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        _text = 'Everything is ready';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _text,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
