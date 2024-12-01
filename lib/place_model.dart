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
        'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
        'https://images.unsplash.com/photo-1495567720989-cebdbdd97913',
        'https://images.unsplash.com/photo-1543486958-d783bfbf9926',
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
        'https://images.unsplash.com/photo-1566864393549-d7f688c4f7e5',
        'https://images.unsplash.com/photo-1528350996546-df4f22daac3a',
        'https://images.unsplash.com/photo-1543486958-d783bfbf9926',
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
        'https://images.unsplash.com/photo-1526778548025-fa2f459cd5c4',
        'https://images.unsplash.com/photo-1588528895324-8a74d413e64b',
        'https://images.unsplash.com/photo-1562680208-ef90c93c6b36',
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
        'https://images.unsplash.com/photo-1576086213369-97a306d3655a',
        'https://images.unsplash.com/photo-1543340903-d531d79b23e6',
        'https://images.unsplash.com/photo-1603415526960-f8f9d5f42b35',
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
        'https://images.unsplash.com/photo-1587502537745-bc6bf7f73484',
        'https://images.unsplash.com/photo-1587502538162-e23f05c50431',
        'https://images.unsplash.com/photo-1587502538794-d0a5d705024b',
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
        'https://images.unsplash.com/photo-1582152620502-72f63895a7d3',
        'https://images.unsplash.com/photo-1570648907725-38280ad5d32e',
        'https://images.unsplash.com/photo-1570647171199-20255e842b19',
      ],
      id: "6",
      description: 'Crystal clear waters and luxury resorts.',
      locationDesc: 'Maldives',
      statusTag: StatusTag.popular,
      shared: 310,
      likes: 640,
    ),
    TravelPlace(
      name: "Mount Fuji",
      user: TravelUser.alex,
      imagesUrl: [
        'https://images.unsplash.com/photo-1602127882470-dab01c058032',
        'https://images.unsplash.com/photo-1527866959252-deab85ef74c6',
        'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
      ],
      id: "7",
      description: 'The majestic Mount Fuji in Japan.',
      locationDesc: 'Honshu, Japan',
      statusTag: StatusTag.popular,
      shared: 190,
      likes: 430,
    ),
    TravelPlace(
      name: "Pyramids of Giza",
      user: TravelUser.javier,
      imagesUrl: [
        'https://images.unsplash.com/photo-1548786811-49c00dc97d2b',
        'https://images.unsplash.com/photo-1574290194077-d8ebda8150aa',
        'https://images.unsplash.com/photo-1603415526960-f8f9d5f42b35',
      ],
      id: "8",
      description: 'Discover ancient wonders in Egypt.',
      locationDesc: 'Cairo, Egypt',
      statusTag: StatusTag.event,
      shared: 270,
      likes: 520,
    ),
    TravelPlace(
      name: "Banff National Park",
      user: TravelUser.luna,
      imagesUrl: [
        'https://images.unsplash.com/photo-1509631179644-62c06915d3b3',
        'https://images.unsplash.com/photo-1519082484463-3fb85dbeba73',
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
      ],
      id: "9",
      description: 'Snow-capped mountains and serene lakes.',
      locationDesc: 'Alberta, Canada',
      statusTag: StatusTag.popular,
      shared: 360,
      likes: 700,
    ),
    TravelPlace(
      name: "Sydney Opera House",
      user: TravelUser.mario,
      imagesUrl: [
        'https://images.unsplash.com/photo-1508963493744-76fce69379c0',
        'https://images.unsplash.com/photo-1507874457470-272b3c8d8ee2',
        'https://images.unsplash.com/photo-1517841905240-472988babdf9',
      ],
      id: "10",
      description: 'Experience the vibrant culture of Sydney.',
      locationDesc: 'Sydney, Australia',
      statusTag: StatusTag.event,
      shared: 400,
      likes: 820,
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
