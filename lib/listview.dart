import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
  ];

  var imageList = [
    'assets/image/profile1.jpeg',
    'assets/image/profile2.jpeg',
    'assets/image/profile3.jpeg',
    'assets/image/profile4.jpeg',
    'assets/image/profile1.jpeg',
    'assets/image/profile2.jpeg',
    'assets/image/profile3.jpeg',
    'assets/image/profile4.jpeg',
    'assets/image/profile1.jpeg',
    'assets/image/profile2.jpeg',
    'assets/image/profile3.jpeg',
    'assets/image/profile4.jpeg',
    'assets/image/profile1.jpeg',
    'assets/image/profile2.jpeg',
    'assets/image/profile3.jpeg',
    'assets/image/profile4.jpeg',
  ];

  var description = [
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
    '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',
  ];

  void showPopup(context, title, image, description) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: const TextStyle(fontSize: 30)),
                const Divider(
                  indent: 30,
                  endIndent: 30,
                  color: Colors.blueGrey,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(image,
                      width: MediaQuery.of(context).size.width * 0.3),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    description,
                    maxLines: 3,
                  ),
                )
              ],
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
        appBar: AppBar(
          title:
              const Text("Profile", style: TextStyle(color: Colors.blueGrey)),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => {
                showPopup(context, titleList[index], imageList[index],
                    description[index])
              },
              child: Card(
                  child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(imageList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(titleList[index],
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey)),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: width,
                            child: Text(description[index],
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[500]))),
                      ],
                    ),
                  ),
                ],
              )),
            );
          },
        ));
  }
}
