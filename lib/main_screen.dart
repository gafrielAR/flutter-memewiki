import 'package:flutter/material.dart';
import 'package:memewiki/detail_screen.dart';
import 'package:memewiki/model/meme_detail.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meme Wiki'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final MemeDetail meme = memeDetailList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(meme: meme);
              }));
            },
            child: listItem(meme),
          );
        },
        itemCount: memeDetailList.length,
      ),
    );
  }

  Widget listItem(MemeDetail meme) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(
            flex: 1,
            child: Image.asset(meme.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  Text(
                    meme.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(meme.origin),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}