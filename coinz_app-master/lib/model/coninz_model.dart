import 'package:flutter/material.dart';

class Couinz {
  final String? name;
  final String? image;
  final String? price;
  final String? change;
  Gradient? gradient;

  Couinz({
    this.name,
    this.image,
    this.change,
    this.price,
    this.gradient,
  });
}

List<Couinz> couinzList = [
  Couinz(
    name: "بيتكوين bitcoin",
    image: 'assets/bitcoin.svg',
    price: "10,544.69 ",
    change: "8.19%",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 203, 188, 101),
        Color.fromARGB(255, 137, 111, 86),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "ايثيريوم Ethereum",
    image: 'assets/ethereum.svg',
    price: "1,006.84 ",
    change: "13.41%",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 215, 163, 8),
        Color.fromARGB(255, 248, 164, 84),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "ريبـل Ripple",
    image: 'assets/ripple.svg',
    price: "1.18",
    change: "5.51%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 60, 97, 209),
        Color.fromARGB(255, 119, 146, 220),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "كاردانو Cardano",
    image: 'assets/cardano.svg',
    price: "0.568",
    change: "3.57%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 121, 17, 57),
        Color.fromARGB(255, 118, 29, 103),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "لايت كوين Litecoin",
    image: 'assets/litecoin.svg',
    price: "169.28",
    change: "1.21%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 7, 131, 81),
        Color.fromARGB(255, 136, 248, 84),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "نيو NEO",
    image: 'assets/neo.svg',
    price: "128.40",
    change: "2.23%",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 220, 190, 20),
        Color.fromARGB(255, 247, 230, 151),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "نيم NEM",
    image: 'assets/nem.svg',
    price: "0.785",
    change: "17.04%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 33, 83, 192),
        Color.fromARGB(255, 54, 170, 212),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "ايوتــا IOTA",
    image: 'assets/iota.svg',
    price: "2.22",
    change: "7.71%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 232, 109, 8),
        Color.fromARGB(255, 242, 254, 173),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "بيتكوين bitcoin",
    image: 'assets/bitcoin.svg',
    price: "10,544.69 \$",
    change: "8.19%",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 80, 5, 96),
        Color.fromARGB(255, 223, 96, 185),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "ايثيريوم Ethereum",
    image: 'assets/ethereum.svg',
    price: "1,006.84 \$",
    change: "13.41%",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 7, 107, 21),
        Color.fromARGB(255, 177, 243, 132),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "ريبـل Ripple",
    image: 'assets/ripple.svg',
    price: "1.18",
    change: "5.51%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 221, 126, 3),
        Color.fromARGB(255, 180, 165, 106),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "كاردانو Cardano",
    image: 'assets/cardano.svg',
    price: "0.568",
    change: "3.57%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 31, 143, 68),
        Color.fromRGBO(222, 239, 122, 1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "لايت كوين Litecoin",
    image: 'assets/litecoin.svg',
    price: "169.28",
    change: "1.21%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 14, 7, 108),
        Color.fromARGB(255, 49, 142, 173),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "نيو NEO",
    image: 'assets/neo.svg',
    price: "128.40",
    change: "2.23%",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 182, 53, 65),
        Color.fromARGB(255, 213, 127, 142),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "نيم NEM",
    image: 'assets/nem.svg',
    price: "0.785",
    change: "17.04%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 63, 57, 23),
        Color.fromARGB(255, 248, 164, 84),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Couinz(
    name: "ايوتــا IOTA",
    image: 'assets/iota.svg',
    price: "2.22",
    change: "7.71%  ",
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 63, 57, 23),
        Color.fromARGB(255, 248, 164, 84),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
];
