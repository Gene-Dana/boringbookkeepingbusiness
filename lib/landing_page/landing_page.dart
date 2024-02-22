import 'package:flutter/material.dart';
import 'package:boringbookkeepingbusiness/landing_page/desktop_home_page.dart';
import 'package:boringbookkeepingbusiness/landing_page/mobile_home_page.dart';

class LandingPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(child: LandingPage());

  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 800 ? DesktopHomePage() : MobileHomePage();
  }
}
