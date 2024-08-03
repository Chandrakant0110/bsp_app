import 'package:bsp_app/screens/delay/dealy_screen.dart';
import 'package:bsp_app/screens/services/services.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Services services = Services();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  services.launchURL('https://www.sail-bhilaisteel.com/');
                },
                child: Image.asset(
                  'assets/images/logo_bsp.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              SizedBox(
                height: 13,
                width: 20,
                child: Image.asset(
                  'assets/images/collab_logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              GestureDetector(
                onTap: () {
                  services.launchURL('https://nitrr.ac.in/');
                },
                child: Image.asset(
                  'assets/images/nitrr_logo.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 10,
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Data-Driven Optimization of Efficiency and Delay Reduction in Work-in-Progress Jobs of MARS-I in Bhilai Steel Plant.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Divider(),
                const Text(
                  'Our Mentees',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '- Mr. Rajeev Sontake, General Manager, CPD',
                      ),
                      Text(
                        '- Mr. Ramesh Parganiha, Deputy General Manager, MARS-I',
                      ),
                      Text(
                        '- Mr. A.P. Malla, Assistant General Manager, CPD',
                      ),
                      Text(
                        '- Mr. Amulya Priyadarshini, Chief General Manager, HRD',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Project Team',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          services.launchURL(
                              'https://www.linkedin.com/in/chandrakantsahu-nitrr/');
                        },
                        child: const Row(
                          children: [
                            Text('- '),
                            Text(
                              'Chandrakant Sahu',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                // decorationColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          services.launchURL(
                              'https://www.linkedin.com/in/divyanshukumar11/');
                        },
                        child: const Row(
                          children: [
                            Text('- '),
                            Text(
                              'Divyanshu Kumar',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                // decorationColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          services.launchURL(
                              'https://www.linkedin.com/in/harshkumar112/');
                        },
                        child: const Row(
                          children: [
                            Text('- '),
                            Text(
                              'Harsh Kumar Sonkar',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                // decorationColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          services.launchURL(
                              'https://www.linkedin.com/in/jeevesh-banchhor-321a3325a/');
                        },
                        child: const Row(
                          children: [
                            Text('- '),
                            Text(
                              'Jeevesh Banchhor',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                // decorationColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const Text(
                  'Project Resources',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 12),
                        onPressed: () {
                          services.launchURL(
                              'https://drive.google.com/file/d/1EsANY87bT-U7ZNXH8o6tocGx3Bdy2yAd/view?usp=sharing');
                        },
                        child: const Text(
                          'Project Report PDF',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 12),
                        onPressed: () {
                          services.launchURL(
                              'https://drive.google.com/file/d/1UJX4AdD_rL9P24462HMRyQImtQ54XSj7/view?usp=drive_link');
                        },
                        child: const Text(
                          'Model PDF',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 12),
                        onPressed: () {
                          services.launchURL(
                              'https://colab.research.google.com/drive/1TyUm4DIaCTddXj0ZzdUm5xZbVMUfrkom?usp=sharing');
                        },
                        child: const Text(
                          'Google Colab Link',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 12),
                        onPressed: () {
                          Navigator.push(
                            context,
                            DelayScreen.route(),
                          );
                        },
                        child: const Text(
                          'Check the Delay here...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    )
                  ],
                ),
                const Divider(),
                const Text(
                  'Machines Available In MARS-I',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Text('DRILLING MACHINE'),
                Image.asset('assets/images/machine_1.jpg'),
                const SizedBox(
                  height: 6,
                ),
                const Text('SLOTTING MACHINE IN LIGHT BAY'),
                Image.asset('assets/images/machine_2.jpg'),
                const SizedBox(
                  height: 6,
                ),
                const Text('SLOTTING MACHINE IN HEAVY BAY'),
                Image.asset('assets/images/machine_3.jpg'),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Made with '),
                    LikeButton(
                      isLiked: true,
                    ),
                    Text('by Chandrakant Sahu.'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
