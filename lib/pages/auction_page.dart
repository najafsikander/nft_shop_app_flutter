import 'package:flutter/material.dart';
import 'package:nft_app/pages/nft_bid_page.dart';
import 'package:nft_app/widgets/auction_item_card_widget.dart';

// ignore: must_be_immutable
class AuctionPage extends StatelessWidget {
  AuctionPage({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: _width * 0.1,
                      right: _width * 0.1,
                      top: _height * 0.014),
                  child: Column(
                    children: [
                      ///Header
                      Row(
                        children: [
                          ///Header Icon
                          Text(
                            'A.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: _width * 0.07,
                                fontWeight: FontWeight.w800),
                          ),
                          const Spacer(),

                          ///Header Profile Avatar
                          CircleAvatar(
                            radius: _width * 0.066,
                            backgroundColor: Colors.black,
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: _width * 0.014,
                                  bottom: _height * 0.01),
                              child: Image.asset(
                                'assets/avatar.png',
                                width: _width * 0.2,
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: _height * 0.015,
                      ),

                      ///Heading subheading and share icon
                      Row(
                        children: [
                          //Area for small heading & large heading & subheading
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Small Heading
                              Text(
                                'Live',
                                style: TextStyle(
                                    fontSize: _width * 0.04,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Auctions.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _width * 0.07),
                              ),
                              Text(
                                'Enjoy! The latest hot auctions.',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: _width * 0.037),
                              ),
                            ],
                          ),
                          const Spacer(),
                          //Area for share icon
                          Container(
                            margin: EdgeInsets.only(top: _height * 0.03),
                            child: Icon(
                              Icons.share,
                              color: Colors.black54,
                              size: _width * 0.08,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: _height * 0.03,
                      ),

                      ///Horizontal list to show trending items
                      SizedBox(
                        width: _width,
                        height: _height * 0.047,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: _width * 0.05,
                                  vertical: _width * 0.02),
                              margin: EdgeInsets.only(right: _width * 0.02),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(14, 14, 52, 1),
                                  borderRadius:
                                      BorderRadius.circular(_width * 0.01)),
                              child: Text(
                                'Trending',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: _width * 0.04),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: _width * 0.05,
                                  right: _width * 0.015,
                                  top: _width * 0.02,
                                  bottom: _width * 0.02),
                              margin: EdgeInsets.only(right: _width * 0.0005),
                              child: Text(
                                'Digital Arts',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: _width * 0.04),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: _width * 0.05,
                                  right: _width * 0.015,
                                  top: _width * 0.02,
                                  bottom: _width * 0.02),
                              margin: EdgeInsets.only(right: _width * 0.0005),
                              child: Text(
                                '3D Videos',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: _width * 0.04),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: _width * 0.05,
                                  right: _width * 0.015,
                                  top: _width * 0.02,
                                  bottom: _width * 0.02),
                              margin: EdgeInsets.only(right: _width * 0.0005),
                              child: Text(
                                'Games',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: _width * 0.04),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: _width * 0.05,
                                  right: _width * 0.015,
                                  top: _width * 0.02,
                                  bottom: _width * 0.02),
                              margin: EdgeInsets.only(right: _width * 0.0005),
                              child: Text(
                                'Comics',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: _width * 0.04),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: _height * 0.03,
                      ),

                      //List of auctioned item card
                      SizedBox(
                        height: _height * 0.57,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NFTBidPage())),
                              child: Container(
                                margin: EdgeInsets.only(right: _width * 0.032),
                                child: AuctionItemCardWidget(
                                  width: _width,
                                  height: _height,
                                  showTopRow: true,
                                  showBottomRows: true,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: _width * 0.032),
                              child: AuctionItemCardWidget(
                                width: _width,
                                height: _height,
                                showTopRow: true,
                                showBottomRows: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: _width * 0.032),
                              child: AuctionItemCardWidget(
                                width: _width,
                                height: _height,
                                showTopRow: true,
                                showBottomRows: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: _width * 0.032),
                              child: AuctionItemCardWidget(
                                width: _width,
                                height: _height,
                                showTopRow: true,
                                showBottomRows: true,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: _height * 0.02,
                      ),
                      //Bottom Nav Bar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: _height * 0.01),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromRGBO(14, 14, 52, 1),
                                        width: 3))),
                            child: Icon(
                              Icons.badge,
                              color: const Color.fromRGBO(14, 14, 52, 1),
                              size: _width * 0.1,
                            ),
                          ),
                          Icon(
                            Icons.navigation_outlined,
                            color: Colors.black45,
                            size: _width * 0.1,
                          ),
                          Icon(
                            Icons.add_box_outlined,
                            color: Colors.black45,
                            size: _width * 0.1,
                          ),
                          Icon(
                            Icons.shop_outlined,
                            color: Colors.black45,
                            size: _width * 0.1,
                          ),
                          Icon(
                            Icons.wallet_membership_outlined,
                            color: Colors.black45,
                            size: _width * 0.1,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
