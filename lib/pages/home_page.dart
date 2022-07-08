import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:styled_text/styled_text.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  double _width = 0;
  double _height = 0;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: SizedBox(
            width: _width,
            height: _height,
            child: Stack(
              children: [
                ///Light blue background container
                Positioned(
                  left: _width * 0.632,
                  top: _height * 0.334,
                  child: Container(
                    width: _width * 0.3,
                    height: _height * 0.054,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(170, 250, 255, 1)),
                  ),
                ),
                Column(
                  children: [
                    ///Header
                    Padding(
                      padding: EdgeInsets.only(
                          left: _width * 0.1,
                          right: _width * 0.1,
                          top: _height * 0.03),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'A.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w800),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            radius: _width * 0.066,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.wallet_membership,
                              color: Colors.white,
                              size: _width * 0.07,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.01,
                    ),

                    ///Heading and SubHeading
                    Padding(
                      padding: EdgeInsets.only(
                          left: _width * 0.1,
                          right: _width * 0.1,
                          top: _height * 0.02),
                      child: Column(
                        children: [
                          //Get Started Row
                          Row(
                            children: [
                              SizedBox(
                                child: Row(children: [
                                  const Icon(
                                    Icons.bolt,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: _width * 0.02,
                                  ),
                                  const Text(
                                    'Started',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                              )
                            ],
                          ),
                          SizedBox(
                            height: _height * 0.03,
                          ),
                          //Heading Area
                          StyledText(
                            text:
                                '<color>Discover</color> <bold> Rare Collections </bold> <color> Of </color> <bold> Art & NFTs. </bold>',
                            tags: {
                              'bold': StyledTextTag(
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                              'color': StyledTextTag(
                                  style: const TextStyle(color: Colors.black54))
                            },
                            style: TextStyle(fontSize: _width * 0.114),
                          ),
                          SizedBox(
                            height: _height * 0.030,
                          ),

                          ///Sub Heading
                          StyledText(
                            text:
                                '<color>Digital marketplace for crypo collectiobles and non-fungible tokens </color> <bold>NFTs</bold>',
                            tags: {
                              'bold': StyledTextTag(
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                              'color': StyledTextTag(
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400),
                              ),
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: _height * 0.07,
                    ),

                    ///Statistics & Discover Art Area
                    Container(
                      height: _height * 0.305,
                      padding: EdgeInsets.only(left: _width * 0.1),
                      child: Row(
                        children: [
                          ///Statistic Area
                          Container(
                            margin: EdgeInsets.only(top: _height * 0.013),
                            child: Column(
                              children: [
                                //Count 1
                                Container(
                                  margin:
                                      EdgeInsets.only(bottom: _height * 0.04),
                                  child: StatisticCountItemWidget(
                                    width: _width,
                                    height: _height,
                                    title: '12.1K+',
                                    subTitle: 'Art Work',
                                  ),
                                ),
                                //Count 2
                                Container(
                                  margin:
                                      EdgeInsets.only(bottom: _height * 0.04),
                                  child: StatisticCountItemWidget(
                                    width: _width,
                                    height: _height,
                                    title: '1.7M+',
                                    subTitle: 'Artist',
                                  ),
                                ),
                                //Count 3
                                Container(
                                  margin:
                                      EdgeInsets.only(bottom: _height * 0.04),
                                  child: StatisticCountItemWidget(
                                    width: _width,
                                    height: _height,
                                    title: '45K+',
                                    subTitle: 'Auction',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: _width * 0.1,
                          ),

                          ///Discover Artwork Container
                          Container(
                            width: _width * 0.588,
                            height: _height,
                            padding: EdgeInsets.symmetric(
                                vertical: _width * 0.095,
                                horizontal: _width * 0.08),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(230, 217, 254, 1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Material(
                                  color: const Color.fromRGBO(201, 199, 255, 1),
                                  child: InkWell(
                                    splashColor:
                                        const Color.fromRGBO(170, 250, 255, 1),
                                    onTap: () => Navigator.pushNamed(
                                        context, '/auction'),
                                    child: Container(
                                      width: _width * 0.17,
                                      height: _height * 0.076,
                                      decoration: const BoxDecoration(),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: _width * 0.1,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _height * 0.02,
                                ),
                                Text(
                                  'Discover',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: _width * 0.07),
                                ),
                                Text(
                                  'Artwork',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: _width * 0.07),
                                ),
                                Container(
                                  height: _height * 0.0037,
                                  width: _width * 0.158,
                                  margin: EdgeInsets.only(top: _height * 0.02),
                                  decoration:
                                      const BoxDecoration(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: _height * 0.045),

                    ///Footer Area
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: _height * 0.05),
                      child: Row(
                        children: [
                          Text(
                            'Supported by',
                            style: TextStyle(
                                color: Colors.black45, fontSize: _width * 0.03),
                          ),
                          SizedBox(
                            width: _width * 0.145,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: _width * 0.06),
                            child: FaIcon(FontAwesomeIcons.ethereum,
                                color: Colors.black, size: _width * 0.1),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: _width * 0.06),
                            child: FaIcon(FontAwesomeIcons.coins,
                                color: Colors.black, size: _width * 0.09),
                          ),
                          FaIcon(FontAwesomeIcons.bitcoin,
                              color: Colors.black, size: _width * 0.097),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class StatisticCountItemWidget extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String subTitle;

  // ignore: use_key_in_widget_constructors
  const StatisticCountItemWidget(
      {required this.width,
      required this.height,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(title,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: width * 0.06)),
        Text(subTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: width * 0.03))
      ],
    );
  }
}
