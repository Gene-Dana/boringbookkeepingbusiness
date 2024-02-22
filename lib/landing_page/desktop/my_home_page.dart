import 'package:boringbookkeepingbusiness/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:boringbookkeepingbusiness/widgets/btns.dart';
import 'package:boringbookkeepingbusiness/landing_page/desktop/widgets/client_logos.dart';
import 'package:boringbookkeepingbusiness/landing_page/desktop/widgets/final_message.dart';
import 'package:boringbookkeepingbusiness/landing_page/desktop/widgets/footer.dart';
import 'package:boringbookkeepingbusiness/app/cubit/app_cubit.dart';
import 'package:boringbookkeepingbusiness/landing_page/desktop/widgets/opening.dart';
import 'package:boringbookkeepingbusiness/reviews/view/reviews_page.dart';

class MyHomePage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: MyHomePage());

  @override
  Widget build(BuildContext context) {
    print('desktop');
    return const NavBar(
      children: [
        Opening(),
        ClientLogos(),
        ReviewsPage(),
        FinalMessage(),
        Footer(),
      ],
    );
  }
}
