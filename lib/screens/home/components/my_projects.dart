import 'package:chirag_portfolio/responsive.dart';
import 'package:chirag_portfolio/screens/home/components/project_card.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          20.heightBox,
          SizedBox(
            child: Responsive(
              mobile: ProjectsGridView(
                crossAxisCount: 1,
                childAspectRatio: 0.7,
              ),
              desktop: ProjectsGridView(),
              tablet: ProjectsGridView(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              mobileLarge: ProjectsGridView(
                crossAxisCount: 2,
                childAspectRatio: 0.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 0.9,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demo_projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => ProjectCard(
              project: demo_projects[index],
            ));
  }
}
