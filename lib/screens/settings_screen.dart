import 'package:flutter/material.dart';

import '../commons/open_url_helper.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double profileSize = 40;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'images/city-day.png',
                  width: profileSize,
                  height: profileSize,
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Sundar',
              ),
              subtitle: const Text(
                '9999345678',
              ),
              trailing: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: const Text(
                  'Edit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.post_add_rounded),
              title: const Text(
                'My Ads',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/my-ads');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text(
                'About Us',
              ),
              onTap: () {
                UrlHelper.openURL('https://appmaking.com/about/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone_outlined),
              title: const Text(
                'Contact Us',
              ),
              onTap: () {
                UrlHelper.openURL('https://appmaking.com/contact/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
