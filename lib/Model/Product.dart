class Watch {
  Watch({
    required this.id,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.color,
    required this.price,
    required this.description,
  });

  String id;
  String image;
  String name;
  String subtitle;
  String color;
  double price;
  String description;

  factory Watch.fromJson(Map<String, dynamic> json) => Watch(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    subtitle: json['subtitle'],
    color: json["color"],
    price: json["price"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "subtitle": subtitle,
    "color": color,
    "price": price,
    "description": description,
  };
}

final dummyWatch = [
  Watch(
    id: '1',
    image: 'images/Gold_1.png',
    name: 'HUBLOT',
    subtitle: 'Decker watch',
    color: 'Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '2',
    image: 'images/Gold_2.png',
    name: 'HUBLOT',
    subtitle: 'Decker watch',
    color: 'Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '3',
    image: 'images/Gold_3.png',
    name: 'HUBLOT',
    subtitle: 'Decker watch',
    color: 'Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '4',
    image: 'images/Gold_4.png',
    name: 'HUBLOT',
    subtitle: 'Decker watch',
    color: 'Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
];

final dummyWatch_1 = [
  // pinkgold
  Watch(
    id: '1',
    image: 'images/pinkgold_1.png',
    name: 'OMEGA',
    subtitle: 'Cosmograph watch',
    color: 'Pink Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '2',
    image: 'images/pinkgold_2.png',
    name: 'OMEGA',
    subtitle: 'Cosmograph watch',
    color: 'Pink Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '3',
    image: 'images/pinkgold_3.png',
    name: 'OMEGA',
    subtitle: 'Cosmograph watch',
    color: 'Pink Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '4',
    image: 'images/pinkgold_4.png',
    name: 'OMEGA',
    subtitle: 'Cosmograph watch',
    color: 'Pink Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
];

final dummyWatch_2 = [
  // pinkgold
  Watch(
    id: '1',
    image: 'images/whitegold_1.png',
    name: 'BIG BANG',
    subtitle: 'Big Bang watch',
    color: 'White Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '2',
    image: 'images/whitegold_2.png',
    name: 'BIG BANG',
    subtitle: 'Big Bang watch',
    color: 'White Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '3',
    image: 'images/whitegold_3.png',
    name: 'BIG BANG',
    subtitle: 'Big Bang watch',
    color: 'White Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '4',
    image: 'images/whitegold_4.png',
    name: 'BIG BANG',
    subtitle: 'Big Bang watch',
    color: 'White Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),

];

final dummyWatch_3 = [
  // pinkgold
  Watch(
    id: '1',
    image: 'images/Platinum_1.png',
    name: 'ZENITH',
    subtitle: 'Zenith watch',
    color: 'Platinum Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '2',
    image: 'images/Platinum_2.png',
    name: 'ZENITH',
    subtitle: 'Zenith watch',
    color: 'Platinum Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '3',
    image: 'images/Platinum_3.png',
    name: 'ZENITH',
    subtitle: 'Zenith watch',
    color: 'Platinum Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '4',
    image: 'images/Platinum_4.png',
    name: 'ZENITH',
    subtitle: 'Zenith watch',
    color: 'Platinum Gold',
    price: 345,
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
];
