import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yo_travel/place_image_page_view.dart';
import 'package:flutter_yo_travel/place_model.dart';
import 'package:flutter_yo_travel/text_theme_x.dart';

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
        ClipRect(
          child: Padding(
            padding: EdgeInsets.only(
              top: (20 + topPadding) * (1 - bottomPercent),
              bottom: 160 * (1 - bottomPercent),
            ),
            child: Transform.scale(
              scale: lerpDouble(1, 1.3, bottomPercent),
              child: PlaceImagePageView(place: place, imagesUrl: imagesUrl),
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          child: _LikesAndSharesContainer(place: place),
        ),
        Positioned.fill(
          top: null,
          child: Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(place.user.urlPhoto),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.user.name,
                      style: context.bodyText1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'yesterday at 9.10 pm.',
                      style: context.bodyText1.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _LikesAndSharesContainer extends StatelessWidget {
  const _LikesAndSharesContainer({
    required this.place,
  });

  final TravelPlace place;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: context.subtitle1,
              shape: const StadiumBorder(),
            ),
            icon: const Icon(
              CupertinoIcons.heart,
              size: 26,
            ),
            label: Text(place.likes.toString()),
          ),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: context.subtitle1,
              shape: const StadiumBorder(),
            ),
            icon: const Icon(
              CupertinoIcons.reply,
              size: 26,
            ),
            label: Text(place.shared.toString()),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue.shade600,
              backgroundColor: Colors.blue.shade100,
              textStyle: context.subtitle1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            icon: const Icon(
              Icons.check_circle_outline,
              size: 26,
            ),
            label: const Text('Checkin'),
          ),
        ],
      ),
    );
  }
}
