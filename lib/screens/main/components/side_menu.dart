import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:html' as html;
import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "India",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Jabalpur",
                    ),
                    // AreaInfoText(
                    //   title: "Age",
                    //   text: "21",
                    // ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        html.window.open(
                            "https://drive.google.com/drive/folders/1J0oodz4RTR-N2jbuDLCsBzvtJ2Z3FKJU?usp=sharing",
                            '_blank');
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD RESUME",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              html.window.open(
                                  "https://www.linkedin.com/in/chiragbachwani/",
                                  "_blank");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              html.window.open(
                                  "https://github.com/chiragbachwani",
                                  "_blank");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              html.window.open(
                                  "https://www.instagram.com/chirag_bachwani/",
                                  "_blank");
                            },
                            icon: SvgPicture.asset("assets/icons/insta.svg", height: 20,),
                          ),
                          IconButton(
                            onPressed: () {
                              const emailAddress = 'bachwani620@gmail.com';
                              const subject = '';
                              const body = 'Hi Chirag,';

                              final mailtoLink =
                                  'mailto:$emailAddress?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}&cc=mailto:';

                              html.window.open(mailtoLink, '_self');
                            },
                            icon: SvgPicture.asset("assets/icons/email.svg"),
                          ),
                          Spacer(),
                        ],
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
