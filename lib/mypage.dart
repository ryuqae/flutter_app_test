import 'package:flutter/material.dart';

const bigfont = 30.0;
const smallfont = 15.0;

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[300],
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Divider(
                height: 30.0,
              ),
              Text(
                "Name",
                style: TextStyle(
                    fontSize: bigfont, color: Colors.white, letterSpacing: 5),
              ),
            ],
          ),
        ));
  }
}
