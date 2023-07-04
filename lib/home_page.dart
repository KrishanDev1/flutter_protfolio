import 'package:flutter/material.dart';
import 'package:protfolio/about_me.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 8),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 120,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Krishan Dev Yadav',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const Text(
                'Software Engineer',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              const SizedBox(height: 60), // Gap before "About Me" section
              const Column(
                children: [
                  Text(
                    'Web And Mobile App Developer',
                    style: TextStyle(color: Colors.cyan, fontSize: 18),
                  ),
                  Text(
                    'Data Science Enthusiast and Analytics ',
                    style: TextStyle(color: Colors.cyan, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 300),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xff328907),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'About Me',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
