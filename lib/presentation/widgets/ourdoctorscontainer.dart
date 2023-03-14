import 'package:flutter/material.dart';

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
              height: dimensions.maxWidth > 900 ? 300 : 600,
              width: dimensions.maxWidth / 2,
              child: dimensions.maxWidth > 900
                  ? Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
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
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: DoctorContainer(
                                    description:
                                        "As a Mental Health clinic\nWe value our patients privacy.",
                                    image: "assets/omar.jpeg"),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: DoctorContainer(
                                    description:
                                        "As a Mental Health clinic\nWe value our patients privacy.",
                                    image: "assets/omar.jpeg"),
                              ),
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
                                      description: "",
                                      image: "assets/omar.jpeg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: DoctorContainer(
                                      description: "",
                                      image: "assets/omar.jpeg"),
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
                                  child: DoctorContainer(
                                      description: "",
                                      image: "assets/omar.jpeg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: DoctorContainer(
                                      description: "",
                                      image: "assets/omar.jpeg"),
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
    return Stack(
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
                borderRadius: BorderRadius.circular(20)),
            height: 250,
            width: 400,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Image.asset(image!,
                        width: 400, height: 250, fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      height: 50,
                      width: 180,
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
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 5.0),
                        child: Column(children: [
                          Text(
                            "DR. Alaa Zayed",
                            style: subtitleTextStyle,
                          )
                        ]),
                      ),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
