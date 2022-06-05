import 'package:flutter/material.dart';
import 'package:flutter_app_test/mypage.dart';

const fontsize = 18.0;

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[200],
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                RoundedButton(page: 1),
                RoundedButton(page: 2)
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                RoundedButton(page: 3),
                RoundedButton(page: 4)
              ]),
        ]));
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.page}) : super(key: key);
  final int page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: avoid_print
      onTap: () => {sendToPage(page, context), print(page)},
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white60),
          alignment: Alignment.center,
          height: 120,
          width: 120,
          margin: const EdgeInsets.all(10),
          child: Text("Go to \nPage #$page",
              style:
                  const TextStyle(fontSize: fontsize, color: Colors.black45))),
    );
  }
}

void sendToPage(int page, ctx) {
  if (page == 1) {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => const PageOne()));
  } else {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => const MyPage()));
  }
}
