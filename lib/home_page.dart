import 'dart:math';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double height = 0.0;
  int weight = 0;
  int age = 0;
  double BMIval = 0.0;
  int BMI = 0;
  double BMIheight = 0.0;
  bool Gender = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:  Hero(
          tag: 'hero',
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff090e21),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff090e21),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: TweenAnimationBuilder(
                          tween:
                          Tween<Offset>(begin: Offset(0, 0), end: Offset(0, 0)),
                          duration: Duration(milliseconds: 5000),
                          builder: (context, Offset posizon, child) {
                            return Transform.translate(
                              offset: posizon,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Gender = true;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    height: 190,
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        TweenAnimationBuilder(
                                          curve: Curves.bounceOut,
                                          tween: Tween<double>(begin: 0, end: 2 * pi),
                                          duration: Duration(milliseconds: 3000),
                                          builder: (context, double val, child) {
                                            return Transform.rotate(
                                              angle: val,
                                              child: Icon(Icons.female_sharp,
                                                  size: 130, color: Colors.pinkAccent.shade400),
                                            );
                                          },
                                        ),
                                        Text(
                                          "Famale",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: TweenAnimationBuilder(
                          tween:
                          Tween<Offset>(begin: Offset(0, 0), end: Offset(0, 0)),
                          duration: Duration(milliseconds: 3000),
                          builder: (context, Offset posizon, child) {
                            return Transform.translate(
                                offset: posizon,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Gender = false;
                                    });
                                  },
                                  child: Ink(
                                    // color: mymalecolor,
                                    child: Container(
                                      height: 190,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          TweenAnimationBuilder(
                                            tween: Tween<double>(begin: 0, end: 2 * pi),
                                            curve: Curves.bounceOut,
                                            duration: Duration(milliseconds: 3000),
                                            builder: (context, double val, child) {
                                              return Transform.rotate(
                                                angle: val,
                                                child: Icon(Icons.male,
                                                    size: 130, color: Colors.white),
                                              );
                                            },
                                          ),
                                          Text(
                                            "Male",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                          },
                        )),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  height: 200,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff323c4d),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(padding: const EdgeInsets.all(3)),
                      const Text(
                        "HEIGHT",
                        style: TextStyle(color: Colors.white30),
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "${height.toInt()}",
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            TextSpan(
                              text: "CM",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                          ])),
                      Slider(
                        min: 0,
                        max: 300,
                        value: height,
                        divisions: 300,
                        onChanged: (val) {
                          setState(() {
                            height = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "$weight",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff4c4f5e),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "-",
                                        style: const TextStyle(
                                          fontSize: 40,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        color: const Color(0xff6e6f7a),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Color(0xfff67fa4)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff323c4d),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "$age",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff4c4f5e),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "-",
                                        style: const TextStyle(
                                          fontSize: 40,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        color: const Color(0xff6e6f7a),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Color(0xfff67fa4)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "$BMI kg/m",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 0),
                InkWell(
                  onTap: () {
                    setState(() {
                      BMIheight = height / 100;
                      BMIval = weight / (BMIheight * BMIheight);
                      BMI = BMIval.toInt();
                    });
                  },
                  child: Ink(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xffeb1555),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Calculate",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
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
