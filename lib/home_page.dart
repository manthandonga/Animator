import 'package:flutter/material.dart';
import 'package:galaxy_planets_app/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("GALAXY PLANETS"),
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        elevation: 5,

        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...Global.Planets.map(
                  (e) => GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('DetailScreenPage', arguments: e);
                },
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 10),
                      margin: const EdgeInsets.only(
                          left: 20, bottom: 20, top: 20, right: 100),
                      height: 190,
                      width: 299,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                e['planets'],
                                style: const TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "Milkyway Gallery",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.amber,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const Icon(Icons.my_location, color: Colors.grey),
                              const SizedBox(width: 5),
                              Text(
                                e['km'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(Icons.unfold_less, color: Colors.grey),
                              const SizedBox(height: 5),
                              Text(
                                e['m/s'],
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    RotationTransition(
                      turns: animationController,
                      child: Hero(
                        tag: e['tag'],
                        child: Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.all(10),
                          child: Image.asset(
                            e['images'],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ).toList(),
          ],
        ),
      ),
    );
  }
}