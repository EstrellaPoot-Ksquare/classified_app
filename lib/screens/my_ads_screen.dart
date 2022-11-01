import 'package:classified_app/custom_widgets/custom_widgets.dart';
import 'package:classified_app/data/ads_list.dart';
import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> myAds = ads;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Ads'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            List myAdsImages = myAds[index]['images'] as List;
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/edit-ad',
                    arguments: myAds[index]);
              },
              child: MyAdsCard(
                myAdsImages: myAdsImages,
                title: myAds[index]['title'] as String,
                price: myAds[index]['price'] as int,
                daysAgo: 8,
              ),
            );
          },
        ),
      ),
    );
  }
}
