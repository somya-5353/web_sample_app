import 'package:flutter/material.dart';
import 'package:web_sample_app/cc_colors.dart';

class CCAccountTile extends StatelessWidget {
  final String title;
  final String amount;

  CCAccountTile({
    Key key,
    @required this.title,
    @required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 20, 28, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style:
              TextStyle(
                  fontSize: 15.0,
                  color: CCColors.accountSummarytext,
                  fontWeight: FontWeight.w500
              )),
              Text(amount,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
