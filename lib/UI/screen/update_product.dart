import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  static String name = '/update';

  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _totalPriceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: buildForm(),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: 'Name',
              labelText: 'Product Name',
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter Product Name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _priceController,
            decoration: const InputDecoration(
              hintText: 'Price',
              labelText: 'Product Price',
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter Product Price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _totalPriceController,
            decoration: const InputDecoration(
              hintText: 'Total Price',
              labelText: 'Total Price',
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter Total Price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityController,
            decoration: const InputDecoration(
              hintText: 'Quantity',
              labelText: 'Quantity',
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter Quantity';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _codeController,
            decoration: const InputDecoration(
              hintText: 'Code',
              labelText: 'Code',
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter Code';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _imageController,
            decoration: const InputDecoration(
              hintText: 'Image',
              labelText: 'Product Image',
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter Product Image URL';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Update Product'),
          ),
        ],
      ),
    );
  }
}
