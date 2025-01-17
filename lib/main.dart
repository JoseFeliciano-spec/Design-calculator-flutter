import 'package:flutter/material.dart';

void main() {
  runApp(const AppLayout());
}

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  static const colors = [
    Color(0xff5f726c),
    Color(0xff5f726c),
    Color(0xff5f726c),
    Color(0xff2d7359),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color(0xff2d7359),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color(0xff2d7359),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color(0xff2d7359),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 25, 25, 25),
    Color(0xff2d7359),
  ];

  static const controllers = [
    Text(
      "AC",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "()",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "%",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "÷",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "7",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "8",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "9",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "X",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "4",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "5",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "6",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "X",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "1",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "2",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "3",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "+",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      ".",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      "0",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
    Icon(
      Icons.backspace_rounded,
      color: Colors.white,
    ),
    Text(
      "=",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "3x2",
                        style: TextStyle(
                          fontSize: 65,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(10),
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 16,
                      shrinkWrap: true,
                      children: List.generate(20, (index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(255),
                            ),
                          ),
                          child: Center(child: controllers[index]),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
