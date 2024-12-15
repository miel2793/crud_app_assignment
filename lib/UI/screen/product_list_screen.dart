import 'package:crud_app/UI/screen/add_new.dart';
import 'package:flutter/material.dart';

import '../wigets/item.dart';

class productlistscreen extends StatefulWidget {
  const productlistscreen({super.key});
//static String name ='/add_new';
  @override
  State<productlistscreen> createState() => _productlistscreenState();
}

class _productlistscreenState extends State<productlistscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return item();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context,addnew.name);
        },

        child: Icon(Icons.add),
      ),
    );
  }
}
