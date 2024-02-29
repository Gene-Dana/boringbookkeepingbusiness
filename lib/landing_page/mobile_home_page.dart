import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mClientLogos.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mFinalMessage.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mFooter.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mOpening.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mReviewsPage.dart';
import 'package:boringbookkeepingbusiness/widgets/mobile_nav_bar.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: MobileHomePage());

  @override
  Widget build(BuildContext context) {
    print('mobile');
    return MobileNavBar(
        child: SingleChildScrollView(
            child: Column(children: [
      mOpening(),
      mClientLogos(),
      mReviewsPage(),
      mFinalMessage(),
      mFooter(),
    ])));
  }
}
