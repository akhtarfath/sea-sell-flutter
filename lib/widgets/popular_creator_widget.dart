import 'package:flutter/material.dart';
import 'package:sea_sell/components/circular_avatar_component.dart';
import 'package:sea_sell/models/creator_model.dart';

class PopularCreator extends StatelessWidget {
  const PopularCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 65,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                index == 0
                    ? const SizedBox(width: 20)
                    : const SizedBox(width: 0),
                circularAvatar(context, index),
                index == creators.length - 1
                    ? const SizedBox(width: 20)
                    : const SizedBox(width: 0),
              ],
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemCount: creators.length,
          ),
        ),
      ],
    );
  }
}
