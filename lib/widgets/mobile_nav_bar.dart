import 'package:boringbookkeepingbusiness/app/cubit/app_cubit.dart';
import 'package:boringbookkeepingbusiness/widgets/btns.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final current = context.read<AppCubit>().state;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromRGBO(1, 15, 48, 1),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () => context.read<AppCubit>().setServices(),
              child: Image.asset('icon.png')),
        ),
        leadingWidth: 120,
      ),
      endDrawer: Drawer(
        child: Center(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 36, 73, 222),
                ),
                //put image
                child: Image.asset('icon.png'),
              ),
              ListTile(
                title: const Text('Home Page'),
                selected: current == AppState.landing,
                onTap: () {
                  // Update the state of the app
                  context.read<AppCubit>().setLanding();
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Services Page'),
                selected: current == AppState.services,
                onTap: () {
                  // Update the state of the app
                  context.read<AppCubit>().setServices();
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: mMainBtn(
                    title: 'Contact Us',
                    link: 'https://calendly.com/boringbooks'),
                selected: current == AppState.services,
                onTap: () {
                  // Update the state of the app
                  context.read<AppCubit>().setServices();
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: child,
    );
  }
}
