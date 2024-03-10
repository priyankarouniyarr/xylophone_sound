import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Explorer',
                style: TextStyle(
                  color: Colors.red,
                )),
          ),
          body: MyWidget(),
        ));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  void musicplayer(int soundNo) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNo.wav'));
  }

  Expanded buildkey({soundNo, required NetworkImage image, String? text}) {
    if (text == null) {
      return Expanded(
        child: Container(),
      );
    }
    return Expanded(
      child: InkWell(
        onTap: () {
          musicplayer(soundNo);
        },
        child: Container(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image(
                image: image,
              ),
            ),
            Text(text),
          ],
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Card(
              margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  title: Text('Arists songs & more'))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Browser all ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
          Expanded(
              child: Row(
            children: [
              buildkey(
                soundNo: 1,
                image: NetworkImage(
                    'https://c.saavncdn.com/166/Har-Har-Sambhu-Hindi-2022-20220712154642-500x500.jpg'),
                text: 'har har shambhu',
              ),

              buildkey(
                  soundNo: 2,
                  image: NetworkImage(
                      'https://c.saavncdn.com/215/Ram-Siya-Ram-Hindi-2021-20210222031001-500x500.jpg'),
                  text: 'Ram siya Ram hindi')
              // Expanded(
              //     child: GestureDetector(
              //   onTap: () {
              //     musicplayer(1);
              //   },
              //   child: Container(
              //     child: Image(
              //       image: NetworkImage(
              //           'https://c.saavncdn.com/166/Har-Har-Sambhu-Hindi-2022-20220712154642-500x500.jpg'),
              //     ),
              //   ),
              // )),
              // Expanded(
              //   child: GestureDetector(
              //     onTap: () {
              //       musicplayer(2);
              //     },
              //     child: Container(
              //       child: Image(
              //         image: NetworkImage(
              //             'https://c.saavncdn.com/215/Ram-Siya-Ram-Hindi-2021-20210222031001-500x500.jpg'),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )),
          Spacer(),
          Expanded(
              child: Row(
            children: [
              buildkey(
                  soundNo: 3,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Zc_Af3_t8JjzZ-R7HXOpzl1I2lfVsEN6_Q&usqp=CAU'),
                  text: 'chhath puja'),
              buildkey(
                  soundNo: 5,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-g2DnlDgDbb6FiQGdAOageUjZzreBXwFUgA&usqp=CAU'),
                  text: 'chhath puja'),
              // Expanded(
              //     child: GestureDetector(
              //   onTap: () {
              //     musicplayer(3);
              //   },
              //   child: Container(
              //     child: Image(
              //       image: NetworkImage(
              //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Zc_Af3_t8JjzZ-R7HXOpzl1I2lfVsEN6_Q&usqp=CAU'),
              //     ),
              //   ),
              // )),
              // Expanded(
              //   child: GestureDetector(
              //     onTap: () {
              //       musicplayer(4);
              //     },
              //     child: Container(
              //       child: Image(
              //         image: NetworkImage(
              //             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-g2DnlDgDbb6FiQGdAOageUjZzreBXwFUgA&usqp=CAU'),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )),
          Spacer(),
          Expanded(
              child: Row(
            children: [
              buildkey(
                  soundNo: 6,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM66i12zelv2nefHXSQ6n2M2s39AUGP0n0og&usqp=CAU'),
                  text: 'ram siya ram'),
              buildkey(
                  soundNo: 4,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Vmh6psVgN-aakzKgPHGF-dcmZkKkK1lndQ&usqp=CAU'),
                  text: 'shree krishna'),

              // Expanded(
              //     child: GestureDetector(
              //   onTap: () {
              //     musicplayer(5);
              //   },
              //   child: Container(
              //     child: Image(
              //       image: NetworkImage(
              //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Vmh6psVgN-aakzKgPHGF-dcmZkKkK1lndQ&usqp=CAU'),
              //     ),
              //   ),
              // )),
              // Expanded(
              //   child: GestureDetector(
              //     onTap: () {
              //       musicplayer(6);
              //     },
              //     child: Container(
              //       child: Image(
              //         image: NetworkImage(
              //             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM66i12zelv2nefHXSQ6n2M2s39AUGP0n0og&usqp=CAU'),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )),
        ]),
      ],
    ));
  }
}
