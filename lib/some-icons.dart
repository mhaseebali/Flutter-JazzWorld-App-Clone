import 'package:flutter/material.dart';
import 'dart:math';

class RoundedCard extends StatefulWidget {
  @override
  _RoundedCardState createState() => _RoundedCardState();
}

class _RoundedCardState extends State<RoundedCard> {
  bool _showAllIcons = false;

  List<Widget> _buildIcons() {
    List<Widget> icons = [];

    List<IconData> iconData = [
      Icons.shop,
      Icons.list,
      Icons.support_agent,
      Icons.sms,
      Icons.account_balance,
      Icons.account_balance_wallet,
      Icons.music_note,
      Icons.account_circle,
      Icons.add,
      Icons.add_a_photo,
      Icons.add_box,
      Icons.add_circle,
    ];

    List<String> textData = [
      'shop',
      'Bundles',
      'Support',
      'Chat',
      'Balance',
      'Wallet',
      'Box',
      'Circle',
      'Add',
      'Photo',
      'Box',
      'Circle',
    ];

    int iconCount = _showAllIcons ? iconData.length : 8;

    for (int i = 0; i < iconCount; i++) {
      IconData icon = iconData[i];
      String text = textData[i];

      Widget iconWidget = Column(
        children: [
          Icon(icon, size: 28),
          SizedBox(height: 5),
          Text(text),
        ],
      );

      icons.add(iconWidget);
    }

    return icons;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Icons',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 16,
            //   ),
            // ),
            SizedBox(height: 6),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: _buildIcons(),
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _showAllIcons = !_showAllIcons;
                    });
                  },
                  child: Text(_showAllIcons ? 'View Less' : 'View More'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
