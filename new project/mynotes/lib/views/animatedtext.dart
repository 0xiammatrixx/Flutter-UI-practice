import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedTextWidget'), backgroundColor: Theme.of(context).primaryColor,),

      body: Column(
        children: [
          AnimatedTextKit(totalRepeatCount: 4,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true, animatedTexts: [
            TypewriterAnimatedText('Let\'s fugging go guys!!', 
            textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
            ,speed: const Duration(milliseconds: 200))
          , ])
        ],
      )
    );
  }
}