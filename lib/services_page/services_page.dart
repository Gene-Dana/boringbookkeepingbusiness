import 'dart:math';

import 'package:boringbookkeepingbusiness/app/cubit/app_cubit.dart';
import 'package:boringbookkeepingbusiness/services_page/desktop_service_page.dart';
import 'package:boringbookkeepingbusiness/services_page/mobile_service_page.dart';
import 'package:boringbookkeepingbusiness/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  static Page page() => const MaterialPage<void>(child: ServicesPage());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 800
        ? const DesktopServicesPage()
        : const MobileServicesPage();
  }
}
