import 'package:classified_app/commons/open_url_helper.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.data});
  final dynamic data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data['title'],
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data['price'].toString()}.0',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/image-viewer',
                          arguments: data['images']);
                    },
                    child: Image.network(data['images'][0]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.person_outline,
                        size: 15,
                        color: Colors.black87,
                      ),
                      Text('Ali'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.timer_outlined,
                        size: 15,
                        color: Colors.black87,
                      ),
                      Text(
                        '14 days ago',
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              data['description'],
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                UrlHelper.openURL('tel:${data['mobile']}');
              },
              child: const Text('Contact Seller'),
            ),
          ],
        ),
      ),
    );
  }
}
