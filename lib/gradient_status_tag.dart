import 'package:flutter/material.dart';
import 'package:flutter_yo_travel/place_model.dart';
import 'package:flutter_yo_travel/text_theme_x.dart';

class GradientStatusTag extends StatelessWidget {
  GradientStatusTag({super.key, required this.statusTag});
  StatusTag statusTag;

  @override
  Widget build(BuildContext context) {
    String text = '';
    List<Color> colors = [Colors.amber, Colors.orange.shade600];

    switch (statusTag) {
      case StatusTag.popular:
        text = "Popular places";
        colors = [Colors.amber, Colors.orange.shade600];
      case StatusTag.event:
        text = "Event";
        colors = [Colors.cyan, Colors.blue.shade600];
        break;
      default:
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
      child: Text(
        text,
        style: context.bodyText1.copyWith(),
      ),
    );
  }
}
