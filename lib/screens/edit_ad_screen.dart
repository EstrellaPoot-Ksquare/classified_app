import 'package:classified_app/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class EditAdScreen extends StatefulWidget {
  const EditAdScreen({super.key, required this.data});
  final dynamic data;

  @override
  State<EditAdScreen> createState() => _EditAdScreenState();
}

class _EditAdScreenState extends State<EditAdScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Edit Ad'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ImageUploader(width: width),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.data['images'].length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black26,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.network(
                        widget.data['images'][index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ProductForm(data: widget.data),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
