import 'package:flutter/material.dart';
import 'package:web_sample_app/cc_account_list_tile.dart';
import 'package:web_sample_app/cc_colors.dart';

class AccountSummaryWidget extends StatelessWidget {
  final double height;

  AccountSummaryWidget({
    Key key,
    this.height = 120,
  }) : super(key: key);

  Map<String, String> listOfData = {
    'Total Credit Limit': '₹' + ' ' + '321456.80',
    'Total Cash Limit': '₹' + ' ' + '40000.0',
    'Membership Points': '200',
  };

  @override
  Widget build(BuildContext context) {
    return AccountSummaryForBrowser(context);
  }

  Widget AccountSummaryForBrowser(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 120,
            width: 490,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 170,
                        child: Text(
                          'Account Summary',
                          style: TextStyle(
                              color: CCColors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Outstanding Amount',
                        style:
                        TextStyle(color: CCColors.lightGrey, fontSize: 12.0),
                      ),
                      Text(
                        'Available Credit Limit',
                        style: TextStyle(
                          color: CCColors.lightGrey,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ('₹' + ' ' + '35000'),
                        style: TextStyle(
                          color: CCColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                      Container(
                          height: 30,
                          child: Center(
                            child: VerticalDivider(
                                thickness: 0.7, color: Colors.grey[400]),
                          )),
                      Text(
                        ('₹' + ' ' + '321456.80'),
                        style: TextStyle(
                          color: CCColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 490,
            color: CCColors.internetBankingThemeColor,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: listOfData.length,
              itemBuilder: (BuildContext context, int index) {
                return  CCAccountTile(
                  title: listOfData.keys.elementAt(index),
                  amount: listOfData.values.elementAt(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
