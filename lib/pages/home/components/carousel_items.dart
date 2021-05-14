import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_demo1/models/carousel_item_model.dart';
import 'package:portfolio_demo1/utilities/constants.dart';

List<CarouselItemModel> carouselItems = List.generate(5,
        (index) => CarouselItemModel(
            text: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Computer Engineer",
                    style: GoogleFonts.oswald(
                      color: kPrimaryColor,
                      //color: Color.fromRGBO(19, 20, 44, 1),
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    )
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "PRAHEN\nPARIJA",
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      //color: Color.fromRGBO(19, 20, 44, 1),
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Developer From Odisha",
                    style: TextStyle(
                      color: kCaptionColor,
                      //color: Colors.black87,
                      fontSize: 15.0,
                      height: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          "I work on various fields",
                          style: TextStyle(
                            color: kCaptionColor,
                            //color: Colors.black87,
                            fontSize: 15.0,
                            height: 1.5,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              "Got a project? Let's talk.",
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.white,
                                //color: Color.fromRGBO(62, 87, 83, 1),
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          Text(
                            "This website is under development !\nSome functionalities may not work.",
                            style: TextStyle(
                              color: kCaptionColor,
                              //color: Colors.black87,
                              fontSize: 15.0,
                              height: 1.0,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Last updated on ",
                                style: TextStyle(
                                  color: kCaptionColor,
                                  //color: Colors.black87,
                                  fontSize: 15.0,
                                  height: 1.0,
                                ),
                              ),
                              Text(
                                "14.05.2021",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  //color: Colors.black87,
                                  fontSize: 15.0,
                                  height: 1.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        //color: Color.fromRGBO(19, 20, 44, 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 48.0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.0,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "DROP A MAIL",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            image: Container(
                child: Image.asset(
                "assets/personme2.png",
                fit: BoxFit.contain,
                    ),
                  ),
                ),
              );