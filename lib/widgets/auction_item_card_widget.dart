import 'package:flutter/material.dart';

class AuctionItemCardWidget extends StatelessWidget {
  final double width;
  final double height;
  final bool showTopRow;
  final bool showBottomRows;

  // ignore: prefer_const_constructors_in_immutables
  AuctionItemCardWidget(
      {Key? key,
      required this.width,
      required this.height,
      required this.showTopRow,
      required this.showBottomRows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * (showTopRow == true ? 0.75 : 0.86),
      height: height * (showTopRow == true ? 0.57 : 0.5165),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          //Column to hold card content
          child: Column(
            children: [
              //First row of the card
              showTopRow == true
                  ? Row(
                      children: [
                        Text(
                          'A.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.w800),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Live',
                            style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '@Mark Rise',
                          style: TextStyle(
                              color: Colors.black45, fontSize: width * 0.037),
                        ),
                      ],
                    )
                  : Container(),

              //Image of nft
              Container(
                margin: EdgeInsets.only(
                    top: height * (showTopRow == true ? 0.02 : 0.0035),
                    bottom: height * 0.008),
                child: const Image(
                  image: AssetImage('assets/nft2.jpg'),
                ),
              ),

              //Countdown & price value
              showBottomRows == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20h : 35m : 08s',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '15.97 ETH',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  : Container(),

              //Countdown & price heading
              showBottomRows == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Remaining Time',
                          style: TextStyle(
                              color: Colors.black45, fontSize: width * 0.037),
                        ),
                        Text(
                          'Highest bid',
                          style: TextStyle(
                              color: Colors.black45, fontSize: width * 0.037),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
