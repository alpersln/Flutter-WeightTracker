import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("History"),
        titleTextStyle: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 21),
      ),
      body: Center(
        child: Text("History sc"),
      ),
    );
  }
}
