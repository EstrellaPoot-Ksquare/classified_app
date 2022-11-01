import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class CardAd extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  const CardAd(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.4,
      child: Stack(
        children: [
          Image.network(
            image,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: !kIsWeb
                  ? const EdgeInsets.all(10)
                  : const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
              color: const Color.fromRGBO(0, 0, 0, 0.6),
              height: 70,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: !kIsWeb
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${price.toString()}.0',
                    style: const TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
