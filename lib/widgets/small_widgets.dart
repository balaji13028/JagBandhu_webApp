import 'package:flutter/material.dart';

Container countDeatilsBox(
    Size size, Color color, String countTitle, countValue) {
  return Container(
    alignment: Alignment.center,
    clipBehavior: Clip.hardEdge,
    height: size.height * 0.13,
    width: size.width * 0.2,
    margin: const EdgeInsets.only(right: 20),
    padding: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 5,
          width: size.width,
          decoration: BoxDecoration(
            color: color,
          ),
        ),
        const Spacer(),
        Text(
          countTitle,
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '$countValue',
          style: TextStyle(
              fontSize: 35, color: color, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
