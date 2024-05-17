import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tasks/music.dart';
import 'package:tasks/trello4.dart';

class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Discover(),
                      ));
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Spacer(),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sleep Meditation',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'best practice meditation',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/mountain.jpg'),
                                fit: BoxFit.cover)),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: 3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      color: Colors.grey,
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Music(),
                            ));
                          },
                          icon: Icon(Icons.music_note))),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.grey,
                    child: Icon(
                      Icons.color_lens_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Text(
                'Mindfulness practices involve concentrating on the present, and they allow a person to experience emotions and thoughts without judgment. Like diaphragmatic breathing and progressive muscle relaxation, mindfulness may help a person relax at bedtime and reduce symptoms of insomnia With your eyes closed, simply breathe in while saying "breathe in" in your head as you do. Then breathe out and say "breathe out". For the next 20 minutes or so, your aim is to focus on this circular breath and the simple words in your head as much as possible Mindfulness practices involve concentrating on the present, and they allow a person to experience emotions and thoughts without judgment. Like diaphragmatic breathing and progressive muscle relaxation, mindfulness may help a person relax at bedtime and reduce symptoms of insomnia With your eyes closed, simply breathe in while saying "breathe in" in your head as you do. Then breathe out and say "breathe out". For the next 20 minutes or so, your aim is to focus on this circular breath and the simple words in your head as much as possible The proposed stages of meditative practice were described as body, feelings, awareness, loving-kindness, release, self-fulfillment, and nonduality. In placing a framework for meditative progression in place it is then possible to compare this practice to religious customs',
                style: TextStyle(color: Colors.white),
              ),
            )),
            Positioned(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'start',
                          ),
                        ],
                      )),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
