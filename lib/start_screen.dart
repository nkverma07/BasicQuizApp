import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
   const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FlutterLogo(
          size: 80,
        ),
         const SizedBox(
          height: 80,
        ),
        Text(
          'Start Screen',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 226, 216, 216),
            fontSize: 30,
          ),
        ),
         const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label:  const Text("Start Quiz"),
        ),
      ],
    ));
  }
}
