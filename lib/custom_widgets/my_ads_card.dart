import 'package:flutter/material.dart';

class MyAdsCard extends StatelessWidget {
  const MyAdsCard({
    Key? key,
    required this.myAdsImages,
    required this.title,
    required this.price,
    required this.daysAgo,
  }) : super(key: key);

  final List myAdsImages;
  final String title;
  final int price;
  final int daysAgo;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26,
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Image.network(
            myAdsImages[0],
            width: width * 0.2,
            height: height * 0.15,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.timer_outlined,
                    size: 15,
                    color: Colors.black45,
                  ),
                  Text(
                    '$daysAgo days ago',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$price.0',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
