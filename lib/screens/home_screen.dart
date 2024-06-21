import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_bsp.jpg',
                fit: BoxFit.fitHeight,
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
                  // scale: 1,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Image.asset(
                'assets/images/nitrr_logo.png',
                fit: BoxFit.fitHeight,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
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
                      '- Mr. C.P. Malla, Assistant General Manager, CPD',
                    ),
                    Text(
                      '- Mr. Amulya Priyadarshini, Chief General Manager, HRD',
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
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '- Chandrakant Sahu',
                    ),
                    Text(
                      '- Divyanshu Kumar',
                    ),
                    Text(
                      '- Harsh Kumar Sonkar',
                    ),
                    Text(
                      '- Jeevesh Banchhor',
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Text(
                'Machines Available In MARS-I',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Image.asset('assets/images/machine_1.jpg'),
              Text('data'),
              Image.asset('assets/images/machine_2.jpg'),
              Text('data'),
              Image.asset('assets/images/machine_3.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
