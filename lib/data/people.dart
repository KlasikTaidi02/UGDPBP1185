class Person {
  final String name;
  final String phone;
  final String picture;
  const Person(this.name, this.phone, this.picture);
}

final List<Person> people = _people
    .map((e) => Person(
        e['name'] as String, e['phone'] as String, e['picture'] as String))
    .toList(growable: false);

final List<Map<String, Object>> _people = [
  {
    "_id": "6508e028c4363331044c29cd",
    "index": 0,
    "guid": "c60adb61-f38d-456a-bae2-1b23ac5a6264",
    "isActive": false,
    "balance": "3,727.80",
    "picture": "http://placehold.it/32x32",
    "age": 39,
    "eyeColor": "blue",
    "name": "Juana Randall",
    "gender": "female",
    "company": "ENQUILITY",
    "email": "juanarandall@enquility.com",
    "phone": "+1 (867) 563-2536",
    "address": "257 Fuller Place, Barrelville, Oregon, 4308",
    "about":
        "Qui minim est exercitation dolore duis eu. Velit amet ipsum mollit nisi minim reprehenderit incididunt ut non Lorem reprehenderit sunt consequat. Pariatur fugiat ex in ea duis tempor aute.\r\n",
    "registered": "2021-01-06T02:07:50 -07:00",
    "latitude": -85.143366,
    "longitude": -28.416875,
    "tags": ["qui", "duis", "esse", "Lorem", "aliquip", "cupidatat", "ex"],
    "friends": [
      {"id": 0, "name": "Florine Hughes"},
      {"id": 1, "name": "Glenna Pitts"},
      {"id": 2, "name": "Allie Henry"}
    ],
    "greeting": "Hello, Juana Randall! You have 7 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "6508e028097c903778ca31c8",
    "index": 1,
    "guid": "12bd7e7d-0810-4318-9b48-04fe7da0fe3c",
    "isActive": false,
    "balance": "1,306.65",
    "picture": "http://placehold.it/32x32",
    "age": 21,
    "eyeColor": "green",
    "name": "Moreno Hunt",
    "gender": "male",
    "company": "UTARA",
    "email": "morenohunt@utara.com",
    "phone": "+1 (968) 595-2864",
    "address": "771 Court Street, Marion, Louisiana, 7393",
    "about":
        "Esse dolore cillum tempor aute adipisicing ea dolore nisi esse deserunt. Minim incididunt officia exercitation ullamco veniam nostrud non occaecat deserunt dolore sit id Lorem. Incididunt occaecat tempor ea sit excepteur enim culpa enim excepteur. Laboris non nostrud adipisicing laborum tempor aute aliquip ex culpa excepteur sunt ex qui enim.\r\n",
    "registered": "2014-09-14T01:54:35 -07:00",
    "latitude": -67.626659,
    "longitude": -46.788097,
    "tags": ["id", "occaecat", "velit", "non", "ea", "tempor", "exercitation"],
    "friends": [
      {"id": 0, "name": "Bridges Benton"},
      {"id": 1, "name": "Le Herring"},
      {"id": 2, "name": "Leblanc Oneill"}
    ],
    "greeting": "Hello, Moreno Hunt! You have 2 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "6508e028fc867baedeb6a30d",
    "index": 2,
    "guid": "7558ffe0-a9b8-4d30-948e-f559c93929cc",
    "isActive": false,
    "balance": "3,966.53",
    "picture": "http://placehold.it/32x32",
    "age": 22,
    "eyeColor": "green",
    "name": "Madge Knight",
    "gender": "female",
    "company": "EARWAX",
    "email": "madgeknight@earwax.com",
    "phone": "+1 (890) 520-3235",
    "address": "886 Dank Court, Abrams, Utah, 3348",
    "about":
        "Aliqua est in in laboris aute eiusmod ea nulla adipisicing reprehenderit. Tempor ex duis non minim officia Lorem ex non ut minim. Voluptate cillum minim pariatur nostrud velit mollit deserunt.\r\n",
    "registered": "2019-07-14T10:03:18 -07:00",
    "latitude": 47.451934,
    "longitude": -99.933984,
    "tags": ["consectetur", "velit", "dolor", "aute", "do", "et", "culpa"],
    "friends": [
      {"id": 0, "name": "Benson Francis"},
      {"id": 1, "name": "Leola Beach"},
      {"id": 2, "name": "Frankie Savage"}
    ],
    "greeting": "Hello, Madge Knight! You have 5 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "6508e02873a9a2d6c7a9ea08",
    "index": 3,
    "guid": "27a42495-9358-42c9-a17b-5475ddfdfb04",
    "isActive": false,
    "balance": "2,033.20",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "brown",
    "name": "Gertrude Munoz",
    "gender": "female",
    "company": "OLYMPIX",
    "email": "gertrudemunoz@olympix.com",
    "phone": "+1 (873) 493-3501",
    "address": "470 Harbor Court, Tioga, Nebraska, 7142",
    "about":
        "Sit exercitation tempor ullamco voluptate ullamco nisi. Cillum ex minim amet reprehenderit. Labore deserunt elit do dolore velit excepteur irure. Irure minim fugiat sint officia duis. Aute Lorem culpa magna cillum qui excepteur sit nulla culpa Lorem duis in voluptate elit.\r\n",
    "registered": "2017-12-31T07:39:34 -07:00",
    "latitude": -20.686498,
    "longitude": -4.791092,
    "tags": ["elit", "velit", "veniam", "est", "aliqua", "fugiat", "non"],
    "friends": [
      {"id": 0, "name": "Kelley Howard"},
      {"id": 1, "name": "Bradley Hatfield"},
      {"id": 2, "name": "Yang Pruitt"}
    ],
    "greeting": "Hello, Gertrude Munoz! You have 10 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "6508e0288775339178817b41",
    "index": 4,
    "guid": "70d04c13-1b39-4e34-bbcd-9a484693466f",
    "isActive": true,
    "balance": "2,012.64",
    "picture": "http://placehold.it/32x32",
    "age": 33,
    "eyeColor": "green",
    "name": "Mcleod Rodriquez",
    "gender": "male",
    "company": "ATOMICA",
    "email": "mcleodrodriquez@atomica.com",
    "phone": "+1 (890) 452-3487",
    "address": "112 Richmond Street, Brandywine, Pennsylvania, 1338",
    "about":
        "Occaecat enim et exercitation occaecat consectetur excepteur eiusmod anim. Occaecat et elit sit labore est. Ipsum elit id ipsum fugiat nulla veniam do aliquip non nostrud id consectetur. Commodo deserunt consectetur duis elit nisi veniam elit excepteur amet. Cupidatat nisi pariatur est proident laborum Lorem laborum ex. Aliquip voluptate ullamco labore nisi consectetur esse fugiat consectetur Lorem veniam minim. Eiusmod excepteur occaecat sit consequat do adipisicing sit culpa laborum non culpa incididunt culpa.\r\n",
    "registered": "2020-12-20T10:01:46 -07:00",
    "latitude": 82.085648,
    "longitude": -11.571771,
    "tags": ["commodo", "tempor", "amet", "eiusmod", "eiusmod", "id", "quis"],
    "friends": [
      {"id": 0, "name": "Franklin Vasquez"},
      {"id": 1, "name": "Koch Daniels"},
      {"id": 2, "name": "Cherry Parsons"}
    ],
    "greeting": "Hello, Mcleod Rodriquez! You have 9 unread messages.",
    "favoriteFruit": "apple"
  }
];
