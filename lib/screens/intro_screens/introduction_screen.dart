import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medico_project/screens/role_wise.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
   void _onIntroEnd(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return
          RoleSelectionScreen();
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to MEDICO AI",
            body:
                "Your personal AI-powered health companion. Get quick, accurate insights based on your symptoms.",
            image: Image.asset("assets/images/intro1.jpg", height: 175.0),
          ),
          PageViewModel(
            title: "Smart Symptom Analysis",
            body:
                "Input your symptoms or images and let Medico analyze and recommend the best next steps.",
            image: Image.asset(
              "assets/images/images5.jpg",
              height: 175.0,
            ),
          ),
          PageViewModel(
            title: "Find Doctors & Hospitals Nearby",
            body:
                "Connect instantly with verified doctors or locate nearby hospitals based on urgency and specialization.",
            image: Image.asset("assets/images/images3.jpg", height: 175.0),
          ),
          PageViewModel(
            title: "AI Recommendations & Severity Detection",
            body:
                "Medico classifies your condition as Low, Medium, or High — suggesting remedies, consultations, or emergencies accordingly.",
            image: Image.asset(
              "assets/images/181112_r33197.webp",
              height: 175.0,
            ),
          ),
        ],
        showSkipButton: true,
         skip: const Text(
                "Skip",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 19, 30, 90),
                ),
              ),
              next: const Text(
                "Next",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 19, 30, 90),
                ),
              ),
              done: const Text(
                "Done",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onDone: () => _onIntroEnd(context),
              dotsDecorator: DotsDecorator(
                size: const Size(10.0, 10.0),
                activeColor: Theme.of(context).colorScheme.secondary,
                color: const Color.fromARGB(255, 12, 22, 82),
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
      ),
    );
  }
}
