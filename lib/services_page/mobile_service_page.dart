import 'package:boringbookkeepingbusiness/widgets/btns.dart';
import 'package:boringbookkeepingbusiness/widgets/mobile_nav_bar.dart';
import 'package:boringbookkeepingbusiness/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MobileServicesPage extends StatelessWidget {
  const MobileServicesPage({super.key});

  static Page page() => const MaterialPage<void>(child: MobileServicesPage());

  @override
  Widget build(BuildContext context) {
    return MobileNavBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _Opening(),
              const _Second(),
              _ServiceSection(
                title: 'Essential Bookkeeping Services',
                subtitle:
                    'Providing the foundational financial support every business requires.',
                icon: Image.asset('icon1.png'),
                serviceList: _ServiceList(
                  color: Colors.blue,
                  services: [
                    Services(
                      service: 'Bank & Credit Card Transaction Coding',
                      descript:
                          'Accurate categorization of bank and credit card transactions to ensure your financials are always up to date.',
                    ),
                    Services(
                      service: 'Monthly Financial Reports',
                      descript:
                          'Regular insights into your financial health with comprehensive reports.',
                    ),
                  ],
                ),
              ),
              _ServiceSection(
                title: 'Advanced Bookkeeping Services',
                subtitle:
                    'Elevate your financial operations with our expanded suite of services.',
                icon: Image.asset('icon2.png'),
                serviceList: _ServiceList(
                  color: Colors.pink,
                  services: [
                    Services(
                      service: 'Weekly Reporting',
                      descript:
                          'Gain more frequent insights with detailed weekly financial summaries.',
                    ),
                    Services(
                      service: 'Statement Reconciliations',
                      descript:
                          'Ensuring all your financial statements match up perfectly with your records.',
                    ),
                    Services(
                      service: 'Month-end Close',
                      descript:
                          'Systematic completion of all accounting tasks to close your books every month.',
                    ),
                    Services(
                      service: 'Advisory Services',
                      descript:
                          'Strategic insights with Key Performance Indicators (KPIs) and in-depth management reporting.',
                    ),
                  ],
                ),
              ),
              _ServiceSection(
                title: 'Complete Bookkeeping Services',
                subtitle:
                    'Our most comprehensive package for businesses seeking full financial management.',
                icon: Image.asset('icon3.png'),
                serviceList: _ServiceList(
                  color: Colors.yellow,
                  services: [
                    Services(
                      service: 'Cash Flow Forecasting',
                      descript:
                          'Project your companys cash flow to make informed business decisions.',
                    ),
                    Services(
                      service: 'Payroll Processing',
                      descript:
                          'Timely and compliant payroll processing to ensure your team is paid correctly and on time.',
                    ),
                    Services(
                      service: 'Job Costing',
                      descript:
                          'Detailed tracking and reporting on the costs associated with specific jobs or projects.',
                    ),
                    Services(
                      service: 'Budgeting',
                      descript:
                          'Assistance in planning your financial budget to align with business goals.',
                    ),
                    Services(
                      service: 'Systems Integration',
                      descript:
                          'Streamlining your accounting systems for maximum efficiency.',
                    ),
                    Services(
                      service: 'Training',
                      descript:
                          'Equip your team with the knowledge to manage and understand your financial systems.',
                    ),
                    Services(
                      service: 'Data Clean up & Catch Up',
                      descript:
                          'Address any backlogs in bookkeeping to bring your accounts up to date.',
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                    'For more detailed information on our service packages, please contact ryan@boringbookkeepingbusiness.com or call us at +1(971) 979-2028.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Opening extends StatelessWidget {
  const _Opening({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtain screen width for dynamic scaling
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Our Services & Expertise',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  // Adjust font size dynamically based on screen width
                  fontSize: 18, // Example dynamic scaling
                  color: const Color.fromARGB(255, 36, 73, 222),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Financial & Bookkeeping Services ',
            // Further dynamic scaling for larger text
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 32,
                ), // Larger text scaled dynamically
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: mMainBtn(
              title: 'Get Started', link: 'https://calendly.com/boringbooks'),
          // You may also consider adjusting button sizes if necessary
        )
      ],
    );
  }
}

class _Second extends StatelessWidget {
  const _Second({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate sizes based on screen width to maintain proportions
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Custom-Crafted Bookkeeping',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: screenWidth * 0.065, // Dynamic font size
                    color: const Color.fromARGB(255, 36, 73, 222),
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Ryan is a seasoned bookkeeping professional leading the industry with nearly two decades of unmatched accounting expertise. His career spans across an impressive array of sectors — contractors, nonprofits, restaurants, and transportation — where he has masterfully handled accounts payable, accounts receivable, credit collections, and auditing. This broad and diverse background solidifies his standing as the go-to expert in adaptable and custom bookkeeping solutions.',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: screenWidth * 0.04), // Dynamic font size
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Ryan and his family enjoy and reside in Portland, Oregon',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: screenWidth * 0.05), // Dynamic font size
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/ryanfam.jpeg',
                    fit: BoxFit.cover,
                    width: screenWidth * (0.4),
                    height: screenWidth * (0.4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://imgs.search.brave.com/PKZxeXMXaJMQ3o1VhdhpjA7riWSutY0vceRLKQ8z7hM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTA5/NzAwMjM0L3Bob3Rv/L3BvcnRsYW5kLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1m/d0szTkFDWnNRRFJQ/N0VEdWRoemJVVmRu/OWo1b1VXQUhtWHlT/Qi1SQkZjPQ',
                    fit: BoxFit.cover,
                    width: screenWidth * (0.4),
                    height: screenWidth * (0.4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ServiceSection extends StatelessWidget {
  const _ServiceSection({
    super.key,
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.serviceList,
  });

  final String title;
  final Image icon;
  final String subtitle;
  final _ServiceList serviceList;

  @override
  Widget build(BuildContext context) {
    // Obtain screen width to adjust layout dynamically
    final screenWidth = MediaQuery.of(context).size.width;
    // Determine the size for the text container based on screen width
    final textContainerWidth =
        screenWidth * 0.59; // Example: 30% of screen width

    return Container(
      padding: const EdgeInsets.all(8.0),
      // Instead of a fixed height, consider making it flexible based on content if possible
      // For a fixed height scenario, consider using MediaQuery to adjust dynamically if needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: screenWidth * 0.062,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:
                            100, // Consider if this needs to be dynamic based on content
                        child: icon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: textContainerWidth, // Use dynamic width
                        child: Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: screenWidth * 0.045),
                        ), // Consider making font size dynamic if necessary
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: serviceList,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ServiceList extends StatelessWidget {
  const _ServiceList({
    super.key,
    required this.services,
    required this.color,
  });

  final List<Services> services;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...services.map((service) => _ServiceTile(
              color: color,
              service: service.service,
              descript: service.descript,
            )),
      ],
    );
  }
}

class _ServiceTile extends StatelessWidget {
  final String service;
  final String descript;
  final Color color;

  const _ServiceTile({
    Key? key,
    required this.service,
    required this.descript,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen width for scaling font size
    final screenWidth = MediaQuery.of(context).size.width;
    // Define base font size and scale it according to screen width
    final baseFontSize = screenWidth < 600
        ? screenWidth * 0.04
        : (screenWidth < 1200 ? 16.0 : 18.0);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.check_circle_outline, color: color),
        ),
        Expanded(
          // Using Expanded instead of SizedBox with fixed width for responsiveness
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: service + ': ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: baseFontSize),
                  ),
                  TextSpan(
                    text: descript,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: baseFontSize),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Services {
  final String service;
  final String descript;
  Services({
    required this.service,
    required this.descript,
  });

  Services copyWith({
    String? service,
    String? descript,
  }) {
    return Services(
      service: service ?? this.service,
      descript: descript ?? this.descript,
    );
  }

  @override
  String toString() => 'Services(service: $service, descript: $descript)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Services &&
        other.service == service &&
        other.descript == descript;
  }

  @override
  int get hashCode => service.hashCode ^ descript.hashCode;
}
