import 'package:flutter/material.dart';

import '../components/typography.dart';
import 'mainfeaturescontainer.dart';

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
              height: dimensions.maxWidth > 900 ? 300 : 600,
              width: dimensions.maxWidth / 2,
              child: dimensions.maxWidth > 900
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: DoctorContainer(
                                    description:
                                        "As a Mental Health clinic\nWe value our patients privacy.",
                                    image: "assets/alaa.jpeg"),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              DoctorContainer(
                                  description:
                                      "As a Mental Health clinic\nWe value our patients privacy.",
                                  image: "assets/alaa.jpeg"),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              DoctorContainer(
                                  description:
                                      "As a Mental Health clinic\nWe value our patients privacy.",
                                  image: "assets/alaa.jpeg"),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              DoctorContainer(
                                  description:
                                      "As a Mental Health clinic\nWe value our patients privacy.",
                                  image: "assets/alaa.jpeg"),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Flexible(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: const [
                                Flexible(
                                  child: DoctorContainer(
                                      description:
                                          "As a Mental Health clinic\nWe value our patients privacy.",
                                      image: "assets/alaa.jpeg"),
                                ),
                                Flexible(
                                  child: DoctorContainer(
                                      description:
                                          "As a Mental Health clinic\nWe value our patients privacy.",
                                      image: "assets/alaa.jpeg"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Flexible(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: const [
                                Flexible(
                                  child: DoctorContainer(
                                      description:
                                          "As a Mental Health clinic\nWe value our patients privacy.",
                                      image: "assets/alaa.jpeg"),
                                ),
                                Flexible(
                                  child: DoctorContainer(
                                      description: "",
                                      image: "assets/alaa.jpeg"),
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

class DoctorContainer extends StatelessWidget {
  final String? image;
  final String? description;
  const DoctorContainer(
      {super.key, required this.image, required this.description});

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
        Image.asset(image!, width: 200, height: 150),
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
