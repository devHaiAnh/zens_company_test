import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zens_company_test/story_provider.dart';

import 'story_model.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  void initState() {
    context.read<StoryProvider>().getListData();
    super.initState();
  }

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
              flex: 1,
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
            ),
            Expanded(
              flex: 4,
              child: body(),
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

  Widget body() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: SizedBox(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          context.watch<StoryProvider>().listData.isEmpty
              ? const CircularProgressIndicator(strokeWidth: 7.0)
              : Selector<StoryProvider, StoryModel>(
                  selector: (context, counter) =>
                      counter.listData[counter.index],
                  builder: (context, item, child) {
                    return Text(item.body,
                        style: const TextStyle(fontSize: 13));
                  },
                ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<StoryProvider>().like();
                    if (context.read<StoryProvider>().showDialog) {
                      showSimpleDialog(context, "Notification",
                          "\"That's all the jokes for today! Come back another day!\"");
                    }
                  },
                  child: Container(
                    height: 30,
                    width: 130,
                    color: Colors.blue,
                    child: const Center(
                        child: Text(
                      "This is Funny!",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<StoryProvider>().dislike();
                    if (context.read<StoryProvider>().showDialog) {
                      showSimpleDialog(context, "Notification",
                          "\"That's all the jokes for today! Come back another day!\"");
                    }
                  },
                  child: Container(
                    height: 30,
                    width: 130,
                    color: Colors.green,
                    child: const Center(
                        child: Text(
                      "This is not Funny.",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  void showSimpleDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                context.read<StoryProvider>().clearListData;
                Navigator.of(context).pop();
              },
              child: Text('Read and vote again'.toUpperCase()),
            ),
          ],
        );
      },
    );
  }
}
