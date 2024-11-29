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
          '',
          '',
          '',
        ],
        id: "3",
        description: ''
            ''
            '',
        locationDesc: 'GOLDEN GATE CAT BRIDGE. San Francisco California',
        statusTag: StatusTag.popular,
        shared: 240,
        likes: 500),
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
    urlPhoto: 'https://images.unsplash.com/photo-15',
  );
  static TravelUser alex = TravelUser(
    name: 'Alex Fernandes',
    urlPhoto: 'https://images.unsplash.com/photo-15',
  );
  static TravelUser mario = TravelUser(
    name: 'Mario Calzada',
    urlPhoto: 'https://images.unsplash.com/photo-15',
  );
  static TravelUser luna = TravelUser(
    name: 'Luna Benioly',
    urlPhoto: 'https://images.unsplash.com/photo-15',
  );
  static TravelUser javier = TravelUser(
    name: 'Javier Kernel',
    urlPhoto: 'https://images.unsplash.com/photo-15',
  );

  static List<TravelUser> user = [lili, alex];
}

enum StatusTag { popular, event }
