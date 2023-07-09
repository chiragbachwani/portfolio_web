import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "< Flutter Developer >",
                            textStyle: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    HeighLight(
                      counter: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "< Video Editor >",
                            textStyle: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "< Tech Enthusiast >",
                            textStyle: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "< Flutter Developer >",
                        textStyle: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                HeighLight(
                  counter: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "< Video Editor >",
                        textStyle: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                HeighLight(
                  counter: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "< Tech Enthusiast >",
                        textStyle: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
