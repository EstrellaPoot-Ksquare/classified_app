import 'package:classified_app/data/ads_list.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Ads Listing'),
        actions: [
          ProfileCircleAppbar(context: context),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(
          right: 10,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/create-ad');
          },
          child: const Icon(Icons.add_a_photo_outlined),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: GridView.builder(
            padding: const EdgeInsets.all(15),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.75,
            ),
            itemCount: ads.length,
            itemBuilder: (context, index) {
              List adImages = ads[index]['images'] as List;
              return GestureDetector(
                child: CardAd(
                  image: adImages[0],
                  title: ads[index]['title'] as String,
                  price: ads[index]['price'] as int,
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/product-detail',
                    arguments: ads[index],
                  );
                },
              );
            }),
      ),
    );
  }
}
