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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'This is the body of the app.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
