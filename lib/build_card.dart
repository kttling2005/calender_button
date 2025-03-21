import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({super.key, required this.text1, required this.image});
  final String text1;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 120,
      width: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(70, 249, 249, 249),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Colors.white,width: 1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
            ),
          ),
        ],
      ),
    );
  }
}
