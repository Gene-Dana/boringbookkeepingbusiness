import 'package:flutter/material.dart';
import 'package:boringbookkeepingbusiness/widgets/btns.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mClientLogos.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mFinalMessage.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mFooter.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mOpening.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_widgets/mReviewsPage.dart';

class MobileHomePage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: MobileHomePage());

  @override
  Widget build(BuildContext context) {
    print('mobile');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(1, 15, 48, 1),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('icon.png'),
          ),
          leadingWidth: 120,
          actions: [mMainBtn(title: 'Contact Us', link: 'link')],
        ),
        body: ListView(children: [
          mOpening(),
          mClientLogos(),
          mReviewsPage(),
          mFinalMessage(),
          mFooter(),
        ]));
  }
}
