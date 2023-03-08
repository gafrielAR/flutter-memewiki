import 'package:flutter/material.dart';
import 'package:memewiki/model/meme_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.meme}) : super(key: key);

  final MemeDetail meme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Image.asset(meme.imageAsset),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  meme.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Lobster',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: const <Widget> [
                        Icon(Icons.calendar_today),
                        Text('From 2007')
                      ],
                    ),
                    Column(
                      children: const <Widget> [
                        Icon(Icons.star),
                        Text('9/10')
                      ],
                    ),
                    Column(
                      children: const <Widget> [
                        Icon(Icons.connect_without_contact_outlined),
                        Text('Fun to use')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'A meme is an idea, behavior, or style that spreads by means of imitation from person to person within a culture and often carries symbolic meaning representing a particular phenomenon or theme.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget> [
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network('https://i.imgflip.com/7ddvri.jpg'),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset('assets/images/Batman-Slapping-Robin.jpg'),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset('assets/images/Roll-Safe-Think-About-It.jpg'),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset('assets/images/Success-Kid.jpg'),
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}