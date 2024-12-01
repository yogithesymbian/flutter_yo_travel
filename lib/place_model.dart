class TravelPlace {
  TravelPlace({
    required this.name,
    required this.user,
    required this.imagesUrl,
    this.id = '',
    this.description = '',
    this.locationDesc = '',
    this.statusTag = StatusTag.popular,
    this.shared = 0,
    this.likes = 0,
  });

  final String name;
  final TravelUser user;
  final List<String> imagesUrl;
  String id;
  String description;
  String locationDesc;
  final StatusTag statusTag;
  int shared;
  int likes;

  static final places = [
    TravelPlace(
      name: "Riviera Maya",
      user: TravelUser.alex,
      imagesUrl: [
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e', // Riviera Maya beach
        'https://images.unsplash.com/photo-1545287078-7bc8b3b3f54b', // Tropical view
        'https://images.unsplash.com/photo-1581579199568-7f4a898ddfc8', // Tropical water
      ],
      id: "1",
      description: 'A beautiful tropical getaway.',
      locationDesc: 'Mexico, Riviera Maya',
      statusTag: StatusTag.popular,
      shared: 240,
      likes: 500,
    ),
    TravelPlace(
      name: "Eiffel Tower",
      user: TravelUser.lili,
      imagesUrl: [
        'https://images.unsplash.com/photo-1542332213-7c99150a0f8d', // Eiffel Tower at sunset
        'https://images.unsplash.com/photo-1512777576245-51c8e22d7d1c', // Eiffel Tower, close-up
        'https://images.unsplash.com/photo-1572433563906-c5f5a5fcf2f1', // Eiffel Tower from below
      ],
      id: "2",
      description: 'The iconic Eiffel Tower in Paris.',
      locationDesc: 'Paris, France',
      statusTag: StatusTag.event,
      shared: 120,
      likes: 340,
    ),
    TravelPlace(
      name: "Santorini",
      user: TravelUser.luna,
      imagesUrl: [
        'https://images.unsplash.com/photo-1504712598893-24159a89200e', // Santorini iconic view
        'https://images.unsplash.com/photo-1573496787183-26697ad1c1aa', // Santorini domes
        'https://images.unsplash.com/photo-1606788075768-92f930fb4e77', // Santorini sunset
      ],
      id: "3",
      description: 'Stunning sunsets in Santorini.',
      locationDesc: 'Santorini, Greece',
      statusTag: StatusTag.popular,
      shared: 300,
      likes: 600,
    ),
    TravelPlace(
      name: "Great Wall of China",
      user: TravelUser.javier,
      imagesUrl: [
        'https://images.unsplash.com/photo-1520848315518-b991dd16a6cf', // Great Wall aerial
        'https://images.unsplash.com/photo-1576432537335-d0383e14dd36', // Great Wall in fog
        'https://images.unsplash.com/photo-1543340903-d531d79b23e6', // Great Wall with mountains
      ],
      id: "4",
      description: 'Walk along the ancient Great Wall.',
      locationDesc: 'Beijing, China',
      statusTag: StatusTag.popular,
      shared: 80,
      likes: 220,
    ),
    TravelPlace(
      name: "Grand Canyon",
      user: TravelUser.mario,
      imagesUrl: [
        'https://images.unsplash.com/photo-1535916707207-78e04d8ff0b5', // Grand Canyon landscape
        'https://images.unsplash.com/photo-1573511705763-168e967216f8', // Grand Canyon with river
        'https://images.unsplash.com/photo-1572451478303-d7cf5fbe1467', // Grand Canyon cliff
      ],
      id: "5",
      description: 'Breathtaking views at the Grand Canyon.',
      locationDesc: 'Arizona, USA',
      statusTag: StatusTag.event,
      shared: 450,
      likes: 870,
    ),
    TravelPlace(
      name: "Maldives",
      user: TravelUser.lili,
      imagesUrl: [
        'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0', // Maldives water villa
        'https://images.unsplash.com/photo-1573199902343-ef6f7dc9b037', // Maldives beach
        'https://images.unsplash.com/photo-1522098543979-ffc7cbb53091', // Maldives aerial view
      ],
      id: "6",
      description: 'Crystal clear waters and luxury resorts.',
      locationDesc: 'Maldives',
      statusTag: StatusTag.popular,
      shared: 310,
      likes: 640,
    ),
  ];
}

class TravelUser {
  TravelUser({
    required this.name,
    required this.urlPhoto,
  });

  final String name;
  final String urlPhoto;

  static TravelUser lili = TravelUser(
    name: 'Lily Juarez',
    urlPhoto: 'https://images.unsplash.com/photo-1517841905240-472988babdf9',
  );
  static TravelUser alex = TravelUser(
    name: 'Alex Fernandes',
    urlPhoto: 'https://images.unsplash.com/photo-1517365830460-955ce3ccd263',
  );
  static TravelUser mario = TravelUser(
    name: 'Mario Calzada',
    urlPhoto: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
  );
  static TravelUser luna = TravelUser(
    name: 'Luna Benioly',
    urlPhoto: 'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df',
  );
  static TravelUser javier = TravelUser(
    name: 'Javier Kernel',
    urlPhoto: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb',
  );
}

enum StatusTag { popular, event }
