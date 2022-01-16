import 'package:flutter/material.dart';
import 'package:pielove/shared/constant.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  final List<String> menu = [
    'salty-pie.png',
    'sweet-pie.png',
    'fruit-pie.png',
    'drinks.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/profile.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Shadam',
                          style: medium.copyWith(
                            color: white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'What Pie you want to try today?',
                          style: regular.copyWith(
                            color: const Color(0xFF9B8FFF),
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF4A3EAE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    style: const TextStyle(color: white),
                    cursorColor: const Color(0xFF9B8FFF),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF9B8FFF),
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 12,
                        bottom: paddingBotInputNum(
                            MediaQuery.of(context).size.height),
                      ),
                      hintText: 'Find your favorite Pie',
                      hintStyle: const TextStyle(
                        color: Color(0xFF9B8FFF),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFF4A3EAE)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFF4A3EAE)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFF4A3EAE)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: primaryOpacity,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: semibold.copyWith(
                        color: black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        menu.length,
                        (i) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: i != 1 ? white : orange,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset('assets/images/${menu[i]}'),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                menu[i]
                                    .replaceAll('-', ' ')
                                    .replaceAll('.png', ''),
                                style: TextStyle(color: i != 1 ? grey : black),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Popular Sweet Pie',
                      style: semibold.copyWith(
                        color: black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            width: 150,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    'assets/images/cream-sweet-pie.png'),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Cream Sweet Pie',
                                  style: medium.copyWith(
                                    color: black,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: orange,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '4.5',
                                      style: medium.copyWith(
                                        color: orange,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            width: 150,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    'assets/images/double-jumbo-pie.png'),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Double Jumb Pie',
                                  style: medium.copyWith(
                                    color: black,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: orange,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '4.8',
                                      style: medium.copyWith(
                                        color: orange,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            width: 150,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    'assets/images/fruit-small-pie.png'),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Fruit Small Pie',
                                  style: medium.copyWith(
                                    color: black,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: orange,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '4.5',
                                      style: medium.copyWith(
                                        color: orange,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double paddingBotInputNum(phoneHeight) {
    return phoneHeight <= 720 && phoneHeight > 600
        ? 8
        : phoneHeight <= 600 && phoneHeight > 400
            ? 16
            : phoneHeight <= 400
                ? 18
                : 32;
  }
}
