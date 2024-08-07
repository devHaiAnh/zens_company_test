import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 35,
                    child: Image.asset(
                      "assets/ico1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Hadricafted by",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54),
                          ),
                          Text("Jim HLS",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black)),
                        ],
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 35,
                        child: Image.asset(
                          "assets/ico2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                color: Colors.green,
                child: const Center(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        h1,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(height: 15),
                      Text(
                        h2,
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: SizedBox(
                    child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      story1,
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 30,
                              width: 130,
                              color: Colors.blue,
                              child: const Center(
                                  child: Text(
                                "This is Funny!",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.white),
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 30,
                              width: 130,
                              color: Colors.green,
                              child: const Center(
                                  child: Text(
                                "This is not Funny.",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.white),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              flex: 4,
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 1,
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    b1,
                    style: TextStyle(fontSize: 9),
                    textAlign: TextAlign.justify,
                    textScaleFactor: 1,
                  ),
                  Text(
                    b2,
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const story1 =
    "A child asked his father, \"How were people born?\" So his father said, \"Adam and Eve made babies, then their babies became adults and made babies, and so on.\" The child then went to his mother, asked her the same question and she told him, \"We were monkeys then we evolved to become like we are now.\" The child ran back to his father and said, \"You lied to me!\" His father replied, \"No, your mom was talking about her side of the family.\"";
const story2 =
    "Teacher: \"Kids,what does the chicken give you?\" Student: \"Meat!\" Teacher: \"Very good! Now what does the pig give you?\" Student: \"Bacon!\" Teacher: \"Great! And what does the fat cow give you?\" Student: \"Homework!\"";
const story3 =
    "The teacher asked Jimmy, \"Why is your cat at school today Jimmy?\" Jimmy replied crying, \"Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'\"";
const h1 = "A joke a day keeps the doctor away";
const h2 = "If you joke wrong way, your teeth have to pay. (Serious)";
const b1 =
    "This appis created as part of Hlsolutions program. The materials con- tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor- mation contained on this site.";
const b2 = "Copyright 2021 HLS";
