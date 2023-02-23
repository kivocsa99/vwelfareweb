import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/typography.dart';

class OurDoctorsContainer extends StatelessWidget {
  const OurDoctorsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ;
  }
}

class FeatureContainer extends StatelessWidget {
  final String? lottieAsset;
  final String? description;
  const FeatureContainer(
      {super.key, required this.lottieAsset, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              spreadRadius: 5,
              blurRadius: 25,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5)),
      height: 250,
      width: 200,
      child: Column(children: [
        Lottie.asset(lottieAsset!, width: 200, height: 150),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description!,
            style: subtitleTextStyle,
          ),
        )
      ]),
    );
  }
}
