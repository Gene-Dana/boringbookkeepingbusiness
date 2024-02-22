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
          child: Image.asset('icon.png'),
        ),
        leadingWidth: 120,
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 73, 222),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Landing'),
              selected: current == AppState.landing,
              onTap: () {
                // Update the state of the app
                context.read<AppCubit>().setLanding();
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Services'),
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
      body: child,
    );
  }
}
