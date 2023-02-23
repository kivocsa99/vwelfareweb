import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MainAppBar extends HookWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () async {
                    if (await canLaunchUrl(
                        Uri.parse("https://www.facebook.com/VwelfareV"))) {
                      await launchUrl(
                          Uri.parse("https://www.facebook.com/VwelfareV"),
                          mode: LaunchMode.inAppWebView);
                    } else {
                      throw Exception('Could not launch ');
                    }
                  },
                  icon: const Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.lightBlueAccent,
                  )),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    //TODO twitter account
                  },
                  icon: const Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.lightBlueAccent,
                  )),
              IconButton(
                  splashRadius: 20,
                  onPressed: () async {
                    if (await canLaunchUrl(Uri.parse(
                        "https://www.instagram.com/v_welfareclinic"))) {
                      await launchUrl(
                          Uri.parse(
                              "https://www.instagram.com/v_welfareclinic"),
                          mode: LaunchMode.inAppWebView);
                    } else {
                      throw Exception('Could not launch ');
                    }
                  },
                  icon: const Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.lightBlueAccent,
                  ))
            ],
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                TextButton(
                  onPressed: () async {
                    String email = Uri.encodeComponent("vwelfare@gmail.com");
                    String subject = Uri.encodeComponent("إستشارة");
                    String body = Uri.encodeComponent("أحتاج الى إستشارة");
                    Uri mail =
                        Uri.parse("mailto:$email?subject=$subject&body=$body");
                    if (await canLaunchUrl(mail)) {
                      await launchUrl(mail);
                    } else {
                      throw Exception('Could not launch ');
                    }
                  },
                  child: const Text(
                    "vwelfare@gmail.com",
                    style:
                        TextStyle(color: Colors.lightBlueAccent, fontSize: 10),
                  ),
                ),
                const VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                TextButton(
                  onPressed: () async {
                    Uri phoneno = Uri.parse('tel:+97798345348734');
                    if (await canLaunchUrl(phoneno)) {
                      await launchUrl(phoneno);
                    } else {
                      throw Exception('Could not launch ');
                    }
                  },
                  child: const Text(
                    "+962776806772",
                    style:
                        TextStyle(color: Colors.lightBlueAccent, fontSize: 10),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      elevation: 4,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
