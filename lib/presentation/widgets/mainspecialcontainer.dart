import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:vwelfare/presentation/components/components.dart';

class MainSpecialContainer extends HookWidget {
  final double? width;
  const MainSpecialContainer({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimensions) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.lightBlue[50]!,
              Colors.white,
            ],
          )),
          height: dimensions.maxWidth > 900 ? 400 : 800,
          width: dimensions.maxWidth,
          child: dimensions.maxWidth > 900
              ? Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: dimensions.maxWidth / 2,
                    child: Row(
                      children: [
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: FeatureContainer(
                                description:
                                    "As a Mental Health clinic\nWe value our patients privacy.",
                                lottieAsset: "assets/privacy.json"),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 80,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: FeatureContainer(
                                    description:
                                        "As a Mental Health clinic\nWe value our patients privacy.",
                                    lottieAsset: "assets/support.json"),
                              ),
                            ],
                          ),
                        ),
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: FeatureContainer(
                                description:
                                    "Vwelfare has helped over 10,000 patient\nOver the globe",
                                lottieAsset: "assets/grow.json"),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 80,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: FeatureContainer(
                                    description:
                                        "Let's Help you\nAnd start our journey.",
                                    lottieAsset: "assets/help.json"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: dimensions.maxWidth / 2,
                    child: Column(
                      children: [
                        Flexible(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: const [
                                Flexible(
                                  child: FeatureContainer(
                                      description:
                                          "As a Mental Health clinic\nWe value our patients privacy.",
                                      lottieAsset: "assets/privacy.json"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: FeatureContainer(
                                      description:
                                          "As a Mental Health clinic\nWe value our patients privacy.",
                                      lottieAsset: "assets/help.json"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: const [
                                Flexible(
                                  child: FeatureContainer(
                                      description:
                                          "As a Mental Health clinic\nWe value our patients privacy.",
                                      lottieAsset: "assets/privacy.json"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: FeatureContainer(
                                      description:
                                          "As a Mental Health clinic\nWe value our patients privacy.",
                                      lottieAsset: "assets/help.json"),
                                ),
                              ],
                            ),
                          ),
                        )
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
          borderRadius: BorderRadius.circular(20)),
      height: 300,
      width: 200,
      child: Column(children: [
        Lottie.asset(lottieAsset!,
            width: 200, height: 150, frameRate: FrameRate.max),
        const Divider(),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description!,
              style: subtitleTextStyle,
            ),
          ),
        )
      ]),
    );
  }
}
