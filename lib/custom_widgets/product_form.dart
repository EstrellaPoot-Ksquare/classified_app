import 'package:flutter/material.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({Key? key, this.data}) : super(key: key);
  final dynamic data;
  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final TextEditingController titleCtrl = TextEditingController(
        text: widget.data != null ? widget.data['title'] : '');
    final TextEditingController priceCtrl = TextEditingController(
        text: widget.data != null ? widget.data['price'].toString() : '');
    final TextEditingController phoneCtrl = TextEditingController(
        text: widget.data != null ? widget.data['mobile'] : '');
    final TextEditingController descCtrl = TextEditingController(
        text: widget.data != null ? widget.data['description'] : '');
    const inputStyle = TextStyle(
      fontSize: 20,
    );
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: titleCtrl,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Title',
              hintText: 'Title',
            ),
            style: inputStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: priceCtrl,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Price',
              hintText: 'Price',
            ),
            style: inputStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: phoneCtrl,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Contact Number',
              hintText: 'Contact Number',
            ),
            style: inputStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: descCtrl,
            keyboardType: TextInputType.multiline,
            minLines: 3,
            maxLines: 5,
            decoration: const InputDecoration(
              labelText: 'Description',
              hintText: 'Description',
            ),
            style: inputStyle,
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Submit Ad'),
          ),
        ],
      ),
    );
  }
}
