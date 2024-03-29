import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainBtn extends StatelessWidget {
  const MainBtn({required this.title, super.key, this.link, this.onPressed});

  final String title;
  final String? link;
  final VoidCallback? onPressed;

  void _launchUrl(String _url) async {
    final Uri uri = Uri.parse(_url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: SizedBox(
        width: 200,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 36, 73, 222),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: link != null ? () => _launchUrl(link!) : onPressed,
            child: Text(
              title,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    height: 1.1,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

class mMainBtn extends StatelessWidget {
  const mMainBtn({required this.title, this.link, super.key, this.onPressed});

  final String title;
  final String? link;
  final VoidCallback? onPressed;

  void _launchUrl(String _url) async {
    final Uri uri = Uri.parse(_url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 170,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 36, 73, 222),
              foregroundColor: Colors.white,
            ),
            onPressed: link != null ? () => _launchUrl(link!) : onPressed,
            child: Text(title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}

class SecondaryBtn extends StatelessWidget {
  const SecondaryBtn({required this.title, required this.link, super.key});

  final String title;
  final String link;

  void _launchUrl(String _url) async {
    final Uri uri = Uri.parse(_url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: SizedBox(
        width: 180,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              surfaceTintColor: Colors.black,
              side:
                  BorderSide(color: Color.fromARGB(255, 36, 73, 222), width: 2),
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () => _launchUrl(link),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(height: 1.1),
            ),
          ),
        ),
      ),
    );
  }
}

class mSecondaryBtn extends StatelessWidget {
  const mSecondaryBtn({required this.title, required this.link, super.key});

  final String title;
  final String link;

  void _launchUrl(String _url) async {
    final Uri uri = Uri.parse(_url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: SizedBox(
        width: 170,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              surfaceTintColor: Colors.black,
              side:
                  BorderSide(color: Color.fromARGB(255, 36, 73, 222), width: 2),
              padding: const EdgeInsets.all(16.0),
            ),
            onPressed: () => _launchUrl(link),
            child: Text(
              title,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}

void _launchUrl(String _url) {
  launchUrl(Uri(path: _url));
}
