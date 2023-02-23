import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:vwelfare/presentation/components/components.dart';

class MainFeatureContainer extends HookWidget {
  final double? width;
  const MainFeatureContainer({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimensions) {
        print(dimensions.maxWidth);
        return Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 300,
            width: width,
            child: dimensions.maxWidth > 900
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          FeatureContainer(lottieAsset: "assets/privacy.json"),
                        ],
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 50,
                          ),
                          FeatureContainer(lottieAsset: "assets/privacy.json"),
                        ],
                      ),
                      Column(
                        children: const [
                          FeatureContainer(lottieAsset: "assets/privacy.json"),
                        ],
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 50,
                          ),
                          FeatureContainer(lottieAsset: "assets/privacy.json"),
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Container(
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
                        height: 200,
                        width: 200,
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class FeatureContainer extends StatelessWidget {
  final String? lottieAsset;
  const FeatureContainer({super.key, required this.lottieAsset});

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
            "As a Mental Health clinic\nWe value our patients privacy.",
            style: subtitleTextStyle,
          ),
        )
      ]),
    );
  }
}
