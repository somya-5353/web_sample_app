import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_sample_app/account_summary_widget.dart';
import 'package:web_sample_app/cc_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: MediaQuery.of(context).size.width,
        minWidth: 1200,
        defaultScale: true,
        breakpoints: [
          // ResponsiveBreakpoint.resize(480, name: MOBILE),
          // ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          // ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: CCColors.fednetBackground,
      appBar: AppBar(
        title: Text(
          'Sample Web App'
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 230,
                child: Center(
                    child: AccountSummaryWidget(height: 120)
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 230,
                child: Center(
                    child: AccountSummaryWidget(height: 120)
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 230,
                child: Center(
                    child: AccountSummaryWidget(height: 120)
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 230,
                child: Center(
                    child: AccountSummaryWidget(height: 120)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}