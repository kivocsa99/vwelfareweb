import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vwelfare/presentation/components/components.dart';

class HomeContainer extends HookWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0, right: 100.0),
      child: LayoutBuilder(
        builder: (context, dimenstions) {
          return dimenstions.maxWidth > 900
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Let's Start\nOur Mental Journey",
                            style: headlineTextStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            """Vwelfare is a clinic consird with Mental Health.
                                  \nSeeking to achieve the best """,
                            style: subtitleTextStyle,
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Wrap(
                          children: const [
                            ImageWrapper(
                                height: 3,
                                widthdivide: 2.5,
                                image: "assets/doctors.json"),
                            ImageWrapper(
                                height: 3,
                                widthdivide: 2.5,
                                image: "assets/therapy.json"),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Let's Start\nOur Mental Journey",
                            style: headlineTextStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 110.0, right: 55),
                            child: Text(
                              """Vwelfare is a clinic consird with Mental Health.
                                    \nSeeking to achieve the best """,
                              style: subtitleTextStyle,
                            ),
                          )
                        ],
                      ),
                      Flexible(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Wrap(
                            children: const [
                              ImageWrapper(
                                  height: 3,
                                  widthdivide: 2.5,
                                  image: "assets/therapy.json"),
                              ImageWrapper(
                                  height: 3,
                                  widthdivide: 2.5,
                                  image: "assets/therapy.json"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
        },
      ),
    );
  }
}
