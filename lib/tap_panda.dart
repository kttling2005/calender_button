import 'dart:math';

import 'package:flutter/material.dart';

class TapPanda extends StatefulWidget {
  final String text1, image;
  const TapPanda({super.key, required this.text1, required this.image});

  @override
  State<TapPanda> createState() => _TapPandaState();
}

class _TapPandaState extends State<TapPanda> {
  late int s;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "time": "07:00",
        "session": "AM",
        "title": "Panda ăn mì",
        "description": "Khum thích rửa bát",
      },
      {
        "time": "09:00",
        "session": "AM",
        "title": "Panda uống nước",
        "description": "trà chanh phố cổ",
      },
      {
        "time": "13:00",
        "session": "PM",
        "title": "Panda học hành",
        "description": "Panda không thích đi chơi, chỉ thích đi học",
      },
      {
        "time": "15:00",
        "session": "PM",
        "title": "Panda đi ngủ",
        "description": "Ngủ đi mák",
      },
      {
        "time": "15:00",
        "session": "PM",
        "title": "Panda làm BTVN",
        "description": "Panda thức đến 2 giờ sáng để nộp bài \ncho anh Hạnh",
      },
      {
        "time": "15:00",
        "session": "PM",
        "title": "Panda xem phim",
        "description": "Panda thích xem phim",
      },
      {
        "time": "15:00",
        "session": "PM",
        "title": "panda đi làm",
        "description": "đi làm để kiếm rice shirt rice money-_-",
      },
    ];
    return Column(
      children: [
        SizedBox(
          height: 90, //layout anh ngu bo me
          child: CalendarTask(
            timeline: events[s]["time"],
            title: events[s]["title"],
            desc: events[s]["description"],
          ),
        ),
        SizedBox(height: 200,),
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 210, 209, 209),
            borderRadius: BorderRadius.circular(120),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(120),
            onTap:
                () => setState(() {
                  s = (Random().nextInt(7));
                }),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.text1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.image)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CalendarTask extends StatelessWidget {
  final String timeline, title, desc;
  const CalendarTask({
    super.key,
    required this.timeline,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                timeline,
                style: TextStyle(
                  color: const Color.fromARGB(176, 255, 255, 255),
                ),
              ),
              Text(
                "AM",
                style: TextStyle(
                  color: const Color.fromARGB(176, 255, 255, 255),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Container(
            color: Color.fromRGBO(
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
              1,
            ),
            height: 70,
            width: 10,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  color: const Color.fromARGB(208, 255, 255, 255),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
