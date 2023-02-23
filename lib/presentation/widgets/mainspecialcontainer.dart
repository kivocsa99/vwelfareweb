import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainSpecialContainer extends HookWidget {
  final double? width;
  const MainSpecialContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 300,
        width:width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
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
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
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
            Column(
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
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
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
          ],
        ),
      ),
    );
  }
}
