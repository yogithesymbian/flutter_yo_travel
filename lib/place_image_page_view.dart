import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_yo_travel/place_model.dart';

class PlaceImagePageView extends StatelessWidget {
  const PlaceImagePageView({
    super.key,
    required this.place,
    required this.imagesUrl,
  });

  final TravelPlace place;
  final List<String> imagesUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: place.imagesUrl.length,
              physics: const BouncingScrollPhysics(),
              controller: PageController(viewportFraction: .9),
              itemBuilder: (context, index) {
                final imageUrl = place.imagesUrl[index];
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                      colorFilter: const ColorFilter.mode(
                        Colors.black26,
                        BlendMode.darken,
                      ),
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imagesUrl.length,
            (index) => Container(
              color: Colors.black12,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              height: 3,
              width: 10,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
