import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_yo_travel/place_image_page_view.dart';
import 'package:flutter_yo_travel/place_model.dart';

class AnimatedDetailHeader extends StatelessWidget {
  const AnimatedDetailHeader({
    super.key,
    required this.place,
    required this.topPercent,
    required this.bottomPercent,
  });

  final TravelPlace place;
  final double topPercent;
  final double bottomPercent;

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final imagesUrl = place.imagesUrl;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          top: (20 + topPadding) * (1 - bottomPercent),
          bottom: 160 * (1 - bottomPercent),
          child: Transform.scale(
            scale: lerpDouble(1, 1.3, bottomPercent),
            child: PlaceImagePageView(place: place, imagesUrl: imagesUrl),
          ),
        ),
        Positioned.fill(
          top: null,
          child: Container(
            height: 140,
            color: Colors.blue.shade400,
          ),
        ),
        Positioned.fill(
          top: null,
          child: Container(
            height: 70,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
