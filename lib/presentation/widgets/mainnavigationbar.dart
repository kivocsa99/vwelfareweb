import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vwelfare/presentation/components/components.dart';

class MainNavigationBar extends HookWidget {
  final double? width;
  const MainNavigationBar({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      color: Colors.grey.withOpacity(0.1),
      width: width,
      height: width! > 900 ? 60 : 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 40,
                  height: 40,
                ),
                const VerticalDivider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                const Text(
                  "V - welfare",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Flexible(
              child: Container(
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.popUntil(context,
                          ModalRoute.withName(Navigator.defaultRouteName)),
                      style: menuButtonStyle,
                      child: const Text(
                        "HOME",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: menuButtonStyle,
                      child: const Text(
                        "About Us",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: menuButtonStyle,
                      child: const Text(
                        "Services",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: menuButtonStyle,
                      child: const Text(
                        "Contact Us",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: menuButtonStyle,
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
