import 'package:flutter/material.dart';
import 'package:sea_sell/models/creator_model.dart';

Widget circularAvatar(BuildContext context, int index) {
  return Container(
    width: 65,
    height: 65,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: creators[index].isSeen
            ? const Color(0xFFA1A1B1)
            : const Color(0xFF5A1FE4),
        width: 2,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: AssetImage("assets/images/${creators[index].image}.png"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
