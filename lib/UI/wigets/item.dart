import 'package:crud_app/UI/screen/update_product.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget {
  const item({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Z3Md-cn1Kfq5GGwJeQ07HxRgF_pRcUqV9g&s'),
      title: Text('Product Name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: #Code'),
          Text('Quantity: 23'),
          Text('Price :5764 & '),
          Text('Total Price : 46736478'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete)),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, Update.name);

          }, icon: Icon(Icons.edit)),
        ],
      ),
    );
  }
}
