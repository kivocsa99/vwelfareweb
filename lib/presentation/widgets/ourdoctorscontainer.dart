import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/typography.dart';

class OurDoctorsContainer extends StatelessWidget {
  const OurDoctorsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimensions) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 300,
              width: dimensions.maxWidth / 2,
              child: dimensions.maxWidth > 900
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              FeatureContainer(
                                  description:
                                      "As a Mental Health clinic\nWe value our patients privacy.",
                                  lottieAsset: "assets/privacy.json"),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              FeatureContainer(
                                  description: "",
                                  lottieAsset: "assets/help.json"),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              FeatureContainer(
                                  description:
                                      "Vwelfare has helped over 10,000 patient\nOver the globe",
                                  lottieAsset: "assets/grow.json"),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              FeatureContainer(
                                  description:
                                      "Let's Help you\nAnd start our journey.",
                                  lottieAsset: "assets/help.json"),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(
                          child: FeatureContainer(
                              description:
                                  "As a Mental Health clinic\nWe value our patients privacy.",
                              lottieAsset: "assets/privacy.json"),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Flexible(
                          child: FeatureContainer(
                              description: "", lottieAsset: "assets/help.json"),
                        ),
                        Flexible(
                          child: FeatureContainer(
                              description:
                                  "Vwelfare has helped over 10,000 patient\nOver the globe",
                              lottieAsset: "assets/grow.json"),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
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
