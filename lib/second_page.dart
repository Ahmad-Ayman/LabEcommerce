import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String? name;

  const SecondPage({Key? key ,  this.name}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(child: Text(widget.name??"Hello"),onTap: (){
          Navigator.pop(context);
        },),
      ),
    );
  }
}
