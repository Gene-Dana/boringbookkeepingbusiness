import 'package:boringbookkeepingbusiness/app/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:boringbookkeepingbusiness/widgets/btns.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class mOpening extends StatelessWidget {
  const mOpening({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 40,
        color: const Color.fromRGBO(1, 15, 48, 1),
        child: Stack(
          children: [
            Positioned.fill(
                top: 500,
                right: -100,
                child: Image.asset('assets/abstract.png',
                    width: MediaQuery.of(context).size.width - 100)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      'Saving you time for what you do best',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: SizedBox(
                      width: 850,
                      child: Text(
                        'Are you a small business owner looking for hassle-free bookkeeping services without the burden of hiring an in-house employee? Look no further! Our dedicated team is here to streamline your financial processes, so you can focus on what you do best – growing your business.',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: SizedBox(
                      width: 700,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => context.read<AppCubit>().setServices(),
                            child: mMainBtn(
                              title: 'Our Services',
                              onPressed: () =>
                                  context.read<AppCubit>().setServices(),
                            ),
                          ),
                          const mSecondaryBtn(
                              title: 'Contact Us',
                              link: 'https://calendly.com/boringbooks')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
