import 'package:boringbookkeepingbusiness/app/cubit/app_cubit.dart';
import 'package:boringbookkeepingbusiness/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final current = context.read<AppCubit>().state;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              title: Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 80, top: 16),
                  child: InkWell(
                    onTap: () {
                      context.read<AppCubit>().setLanding();
                    },
                    child: Image.asset('alt_icon.png', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            expandedHeight: 130,
            pinned: true,
            backgroundColor: const Color.fromRGBO(1, 15, 48, 1),
            toolbarHeight: 100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _NavElement(
                  name: 'Home',
                  selected: current == AppState.landing ? true : false,
                  link: 'link',
                  onPressed: () {
                    context.read<AppCubit>().setLanding();
                  },
                ),
                _NavElement(
                  name: 'Services',
                  selected: current == AppState.services ? true : false,
                  link: 'link',
                  onPressed: () {
                    context.read<AppCubit>().setServices();
                  },
                ),
              ],
            ),
            actions: const [
              MainBtn(
                  title: 'Contact Us',
                  link: 'https://calendly.com/boringbooks'),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [...children],
            ),
          ),
        ],
      ),
    );
  }
}

class _NavElement extends StatelessWidget {
  const _NavElement({
    super.key,
    required this.name,
    required this.link,
    this.onPressed,
    required this.selected,
  });

  final String name;

  final String link;
  final VoidCallback? onPressed;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(16.0),
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: selected ? Colors.blue : Colors.white),
        ),
      ),
    );
  }
}
