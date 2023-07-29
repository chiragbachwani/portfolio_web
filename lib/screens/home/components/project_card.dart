import 'package:chirag_portfolio/responsive.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import 'dart:html' as html;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          Text(
            project.title!,
            maxLines: 2,
            style: TextStyle(
                fontSize: Responsive.isDesktop(context)
                    ? 20
                    : Responsive.isTablet(context)
                        ? 14
                        : 14,
                fontStyle: FontStyle.italic,
                color: Vx.gray200),
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Responsive.isMobileLarge(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Image.asset(
                    //   project.path!,
                    //   width: 170,
                    // ),
                    SizedBox(
                      height: 300,
                      child: VxSwiper.builder(
                          viewportFraction:
                              Responsive.isMobile(context) ? 0.34 : 0.64,
                          autoPlayInterval: Duration(seconds: 3),
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          height: 400,
                          scrollPhysics: NeverScrollableScrollPhysics(),
                          enlargeCenterPage: true,
                          itemCount: project.path!.length,
                          itemBuilder: ((context, index) {
                            return Image.asset(
                              project.path![index],
                              width: Responsive.isTablet(context) ? 130 : 170,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(
                                    const EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          })),
                    ),
                    SizedBox(
                      width: Responsive.isMobileLarge(context) ? 230 : 350,
                      child: Text(
                        project.description!,
                        maxLines: Responsive.isMobileLarge(context)
                            ? 7
                            : Responsive.isMobile(context)
                                ? 5
                                : 12,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(height: 1.5),
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Image.asset(
                    //   project.path!,
                    //   width: Responsive.isTablet(context) ? 130 : 170,
                    // ),
                    SizedBox(
                      height: 340,
                      width: Responsive.isTablet(context) ? 150 : 170,
                      child: VxSwiper.builder(
                          viewportFraction: 1.5,
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          height: 400,
                          // scrollPhysics: NeverScrollableScrollPhysics(),
                          enlargeCenterPage: true,
                          itemCount: project.path!.length,
                          itemBuilder: ((context, index) {
                            return Image.asset(
                              project.path![index],
                              width: Responsive.isTablet(context) ? 130 : 170,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(
                                    const EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          })),
                    ),
                    SizedBox(
                      width: Responsive.isTablet(context) ? 130 : 170,
                      child: Text(
                        maxLines: Responsive.isMobileLarge(context)
                            ? 7
                            : Responsive.isMobile(context)
                                ? 5
                                : 12,
                        overflow: TextOverflow.ellipsis,
                        project.description!,
                        style: TextStyle(height: 1.5),
                      ),
                    )
                  ],
                ),
          Spacer(),
          Text(
            "Check Out>>>",
            style: TextStyle(
                color: primaryColor,
                fontSize: Responsive.isMobileLarge(context)
                    ? 14
                    : Responsive.isTablet(context)
                        ? 15
                        : 20),
          ).onTap(
            () {
              html.window.open(project.link!, '_blank');
            },
          )
        ],
      ),
    );
  }
}
