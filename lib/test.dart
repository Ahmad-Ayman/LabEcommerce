import 'package:flutter/material.dart';
import 'package:lab2/second_page.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SecondPage()));
                //
                 Navigator.pushNamed(context, '/ThirdPage');


              },
              child: Text(
                'Submit',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Elevated'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outlined')),
            IconButton(
                onPressed: () {
                  print('icon pressed');
                },
                icon: Icon(Icons.ac_unit_rounded)),
            GestureDetector(
              onTap: () {
                print('Hello');
              },
              onLongPress: () {
                print('Welcome');
              },
              child: Container(
                child: Text('asdasdasd'),
              ),
            ),
            GestureDetector(
              child: Icon(Icons.usb),
              onTap: () {
                print('sadasda');
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
 */
/*

 */
