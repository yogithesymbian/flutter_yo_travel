import 'package:flutter/material.dart';
import 'package:flutter_yo_travel/animated_detail_header.dart';
import 'package:flutter_yo_travel/place_model.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({
    super.key,
    required this.place,
  });
  final TravelPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: BuilderPersistentDelegate(
              maxExtent: MediaQuery.of(context).size.height,
              minExtent: 240,
              builder: (percent) {
                return AnimatedDetailHeader(
                  place: place,
                  topPercent: ((1 - percent) / .7).clamp(0.0, 1.0),
                  bottomPercent: (percent / .3).clamp(0.0, 1.0),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: Placeholder(),
          ),
          const SliverToBoxAdapter(
            child: Placeholder(),
          ),
          const SliverToBoxAdapter(
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}

class BuilderPersistentDelegate extends SliverPersistentHeaderDelegate {
  BuilderPersistentDelegate(
      {required double maxExtent,
      required double minExtent,
      required this.builder})
      : _maxExtent = maxExtent,
        _minExtent = minExtent;

  final double _maxExtent;
  final double _minExtent;
  final Widget Function(double percent) builder;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return builder(shrinkOffset / _maxExtent);
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
