import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/net1.gif",
            opacity: AlwaysStoppedAnimation(0.8),
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to My \nPortfolio!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding),
                const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        // it applies same style to all the widgets under it
        style: Theme.of(context).textTheme.titleMedium!,
        maxLines: 1,
        child: Column(
          children: [
            Row(
              children: [
                if (!Responsive.isMobileLarge(context))
                  const FlutterCodedText2(),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(width: defaultPadding / 2),
                Responsive.isMobile(context)
                    ? const Expanded(child: AnimatedText2())
                    : const AnimatedText2(),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(width: defaultPadding / 2),
                if (!Responsive.isMobileLarge(context))
                  const FlutterCodedText2(),
              ],
            ),
            Responsive.isMobileLarge(context)
                ? const SizedBox(
                    height: 0.1,
                    width: 0.1,
                  )
                : 20.heightBox,
            Responsive.isMobileLarge(context)
                ? const SizedBox(
                    height: 0.1,
                    width: 0.1,
                  )
                : Row(
                    children: [
                      if (!Responsive.isMobileLarge(context))
                        const FlutterCodedText(),
                      if (!Responsive.isMobileLarge(context))
                        const SizedBox(width: defaultPadding / 2),
                      const Text("I build "),
                      Responsive.isMobile(context)
                          ? const Expanded(child: AnimatedText())
                          : const AnimatedText(),
                      if (!Responsive.isMobileLarge(context))
                        const SizedBox(width: defaultPadding / 2),
                      if (!Responsive.isMobileLarge(context))
                        const FlutterCodedText(),
                    ],
                  ),
            Responsive.isDesktop(context)
                ? 10.heightBox
                : Responsive.isTablet(context)
                    ? 15.heightBox
                    : 1.heightBox,
            Responsive.isMobileLarge(context)
                ? const SizedBox(
                    height: 0.1,
                    width: 0.1,
                  )
                : Row(
                    children: [
                      Row(
                        children: [
                          if (!Responsive.isMobileLarge(context))
                            FlutterCodedText3(),
                          if (!Responsive.isMobileLarge(context))
                            SizedBox(width: defaultPadding / 2),
                          Responsive.isMobile(context)
                              ? Expanded(child: AnimatedText3())
                              : AnimatedText3(),
                          if (!Responsive.isMobileLarge(context))
                            SizedBox(width: defaultPadding / 2),
                        ],
                      ),
                      Row(
                        children: [
                          Text(","),
                          if (!Responsive.isMobileLarge(context))
                            SizedBox(width: defaultPadding / 2),
                          Responsive.isMobile(context)
                              ? Expanded(child: AnimatedText4())
                              : AnimatedText4(),
                          if (!Responsive.isMobileLarge(context))
                            SizedBox(width: defaultPadding / 2),
                          Text(","),
                        ],
                      ),
                      Row(
                        children: [
                          if (!Responsive.isMobileLarge(context))
                            SizedBox(width: defaultPadding / 2),
                          Responsive.isMobile(context)
                              ? Expanded(child: AnimatedText5())
                              : AnimatedText5(),
                          if (!Responsive.isMobileLarge(context))
                            SizedBox(width: defaultPadding / 2),
                          if (!Responsive.isMobileLarge(context))
                            FlutterCodedText3(),
                        ],
                      ),
                    ],
                  )
          ],
        ));
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "Responsive Mobile Apps.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Full Stacks Projects",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Flutter Projects",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: const [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}

class FlutterCodedText2 extends StatelessWidget {
  const FlutterCodedText2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: const [
          TextSpan(
            text: "About Me",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}

class AnimatedText2 extends StatelessWidget {
  const AnimatedText2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "I am Chirag Bachwani.",
          speed: Duration(milliseconds: 60),
        ),
        // TyperAnimatedText(
        //   "B.Tech CSE Student at MITS, Gwalior",
        //   speed: Duration(milliseconds: 60),
        // ),
        TyperAnimatedText(
          "Full Stack Developer",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class AnimatedText3 extends StatelessWidget {
  const AnimatedText3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "Flutter",
          speed: Duration(milliseconds: 300),
        ),
        TyperAnimatedText(
          "Node Js",
          speed: Duration(milliseconds: 300),
        ),
        TyperAnimatedText(
          "C/C++",
          speed: Duration(milliseconds: 300),
        ),
      ],
    );
  }
}

class AnimatedText4 extends StatelessWidget {
  const AnimatedText4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "FireBase",
          speed: Duration(milliseconds: 300),
        ),
        TyperAnimatedText(
          "Dart",
          speed: Duration(milliseconds: 300),
        ),
        TyperAnimatedText(
          "Python",
          speed: Duration(milliseconds: 300),
        ),
        TyperAnimatedText(
          "MOngoDB",
          speed: Duration(milliseconds: 300),
        ),
      ],
    );
  }
}

class AnimatedText5 extends StatelessWidget {
  const AnimatedText5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "DSA",
          speed: Duration(milliseconds: 300),
        ),
        TyperAnimatedText(
          "SQL",
          speed: Duration(milliseconds: 300),
        ),
        TyperAnimatedText(
          "GIT",
          speed: Duration(milliseconds: 300),
        ),
      ],
    );
  }
}

class FlutterCodedText3 extends StatelessWidget {
  const FlutterCodedText3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: const [
          TextSpan(
            text: "Skills",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
