import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_demo1/models/education.dart';
import 'package:portfolio_demo1/utilities/constants.dart';
import 'package:portfolio_demo1/utilities/screen_helper.dart';

final List<Education> educationList = [
  Education(
    description: "I am currently pursuing my bachelor degree on  COMPUTER SCIENCE AND ENGINEERING in SOA University,Bhubaneswar",
    linkname: "https://www.soa.ac.in/",
    period: "COMPUTER SCIENCE AND ENGINEERING (2019-PRESENT)",
  ),
  Education(
    description: "I completed my higher secondary educatrion with science stream in Saraswati Gyana Mandir Junior Science College,Niladrivihar,Bhubaneswar ",
    linkname: "http://ssvmniladrivihar.org/",
    period: "HIGHER SECONDARY (2016-18)",
  ),
  Education(
    description: "I have done my entire schooling from LKG to class 10Th in Saraswati Shishu Mandir,Banki,Cuttack ",
    linkname: "https://www.facebook.com/Ssvm-banki-630823070386805/",
    period: "SCHOOLING (2005-16)",
  ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(1000.0),
        tablet: _buildUi(800.0),
        mobile: _buildUi(MediaQuery.of(context).size.width * .6),
      ),
    );
  }
}

Widget _buildUi(double width) {
  return Container(
    alignment: Alignment.center,
    child: ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("EDUCATION",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              )),
          SizedBox(
            height: 5.0,
          ),
          Wrap(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 400.0),
                child: Text("I will write this.",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          LayoutBuilder(builder: (context, constraitns) {
            return Container(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children:
                    educationList
                        .map(
                            (education) => Container(
                              width: constraitns.maxWidth / 2.0 - 20.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(education.period,
                                  style: GoogleFonts.oswald(
                                    color: kPrimaryColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(education.description,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: kCaptionColor,
                                      height: 1.5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async{
                                        var url = education.linkname;
                                        if (await canLaunch(url)){
                                          await launch(url);
                                        }else{
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Text(
                                        education.linkname,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                ],
                              ),
                            ),
                    ).toList(),
                ),
            );
          },
          )
        ],
      ),
    ),
  );
}
