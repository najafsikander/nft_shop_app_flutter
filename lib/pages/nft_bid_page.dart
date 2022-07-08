import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

import '../widgets/auction_item_card_widget.dart';

// ignore: must_be_immutable
class NFTBidPage extends StatelessWidget {
  NFTBidPage({Key? key}) : super(key: key);

  double _width = 0;
  double _height = 0;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    return Scaffold(
      //Appbar of the page
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Auctions',
          style: TextStyle(color: Colors.black, fontSize: _width * 0.05),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        //Get Action buttons
        actions: _getActionWidgets(_width),
      ),
      body: Padding(
        padding: EdgeInsets.all(_width * 0.02),
        child: SizedBox(
          width: _width,
          height: _height,
          child: Column(children: [
            SizedBox(
              height: _height * 0.01,
            ),

            //NFT Image For Bidding
            AuctionItemCardWidget(
              width: _width,
              height: _height,
              showTopRow: false,
              showBottomRows: false,
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            //Heading
            Container(
              margin: EdgeInsets.only(left: _width * 0.048),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'DAY 74',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: _width * 0.07),
                ),
              ),
            ),
            //SubHeading - NFT Owner
            Container(
              margin: EdgeInsets.only(left: _width * 0.048),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '@Mark Rise',
                  style:
                      TextStyle(color: Colors.black45, fontSize: _width * 0.03),
                ),
              ),
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(left: _width * 0.048),
              child: Align(
                alignment: Alignment.topLeft,
                child: StyledText(
                  text:
                      'Who we were and what we will become are there. They are around us, they are battling. they are testing and they are beeing watch...<bold>More</bold>',
                  style:
                      TextStyle(color: Colors.black45, fontSize: _width * 0.04),
                  tags: {
                    'bold': StyledTextTag(
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black))
                  },
                ),
              ),
            ),
            SizedBox(
              height: _height * 0.01,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: _width * 0.048),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Divider(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: _height * 0.01,
            ),
            ListTile(
              dense: true,
              leading: CircleAvatar(
                radius: _width * 0.066,
                backgroundColor: Colors.black,
                child: Container(
                  margin: EdgeInsets.only(
                      right: _width * 0.014, bottom: _height * 0.01),
                  child: Image.asset(
                    'assets/avatar.png',
                    width: _width * 0.2,
                  ),
                ),
              ),
              title: Text(
                'Highest Bid Placed By',
                style:
                    TextStyle(color: Colors.black45, fontSize: _width * 0.04),
              ),
              subtitle: Text(
                'Merry Rose',
                style: TextStyle(color: Colors.black, fontSize: _width * 0.04),
              ),
              trailing: Text(
                '15.97 ETH',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: _width * 0.045,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: _width * 0.048),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(14, 14, 52, 1),
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Place Bid',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: _width * 0.04),
                      ),
                      Text(
                        '20h : 35m : 08s',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: _width * 0.04),
                      )
                    ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  List<Widget> _getActionWidgets(double width) {
    return [
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              CupertinoIcons.heart_solid,
              color: Colors.pinkAccent,
              size: width * 0.06,
            ),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              size: width * 0.06,
            ),
          )),
    ];
  }
}
