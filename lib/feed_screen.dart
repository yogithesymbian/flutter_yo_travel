import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yo_travel/place_card.dart';
import 'package:flutter_yo_travel/place_model.dart';
import 'package:flutter_yo_travel/text_theme_x.dart';
import 'package:flutter_yo_travel/travel_navigation_bar.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yo Travel"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.star),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: TravelPlace.places.length,
        itemExtent: 350,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20, 0, 20, kToolbarHeight + 20),
        itemBuilder: (context, index) {
          final place = TravelPlace.places[index];
          return PlaceCard(place: place);
        },
      ),
      extendBody: true,
      bottomNavigationBar: const TravelNavigationBar(),
    );
  }
}
