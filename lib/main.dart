import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:vwelfare/presentation/components/typography.dart';
import 'package:vwelfare/presentation/widgets/homecontainer.dart';
import 'package:vwelfare/presentation/widgets/mainappbar.dart';
import 'package:vwelfare/presentation/widgets/mainfeaturescontainer.dart';
import 'package:vwelfare/presentation/widgets/mainnavigationbar.dart';
import 'package:vwelfare/presentation/widgets/mainspecialcontainer.dart';
import 'package:vwelfare/presentation/widgets/ourdoctorscontainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vwelfare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1920,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(2000, name: DESKTOP),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollcontroller = useScrollController();
    final doctorkey = useState(GlobalKey());
    return LayoutBuilder(
      builder: (context, dimenstions) {
        return Scaffold(
          appBar: const MainAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                MainNavigationBar(
                  width: dimenstions.maxWidth,
                  doctorscroll: () {
                    Scrollable.ensureVisible(doctorkey.value.currentContext!,
                        duration: Duration(seconds: 1));
                  },
                ),
                const HomeContainer(),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Why Vwelfare ?",
                    style: headlineTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MainFeatureContainer(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Our Experts",
                    style: headlineTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const OurDoctorsContainer(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "How can Vwelfare help you ?",
                    style: headlineTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MainSpecialContainer(
                  width: dimenstions.maxWidth,
                  key: doctorkey.value,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
