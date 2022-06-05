import 'package:flutter/material.dart';

const bigfont = 30.0;
const smallfont = 15.0;

class WhoAmI extends StatelessWidget {
  const WhoAmI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[300],
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                height: 30.0,
              ),
              const Text(
                "Name",
                style: TextStyle(
                    fontSize: bigfont, color: Colors.white, letterSpacing: 5),
              ),
              // ignore: avoid_print
              InkWell(
                  child: const Icon(Icons.close),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}
