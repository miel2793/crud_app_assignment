import 'package:flutter/material.dart';
class addnew extends StatefulWidget {
  static String name='add_new';

  const addnew({super.key});

  @override
  State<addnew> createState() => _addnewState();
}

class _addnewState extends State<addnew> {
  final TextEditingController _nameTecontroller= TextEditingController();
  final TextEditingController _PriceTecontroller= TextEditingController();
  final TextEditingController _TotalPriceTecontroller= TextEditingController();
  final TextEditingController _QuantityTecontroller= TextEditingController();
  final TextEditingController _CodeTecontroller= TextEditingController();
  final TextEditingController _ImageTecontroller= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Product'),
      ),
      body:SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: buildForm() ,    ),
      ),
    );
  }

  Widget buildForm() {
    return Form (
        child: Column(
          children: [
            TextFormField(
              controller: _nameTecontroller,
              decoration:InputDecoration(
                hintText: 'Name',
                labelText:'Product Name ',
              ),
              validator:(String? value)
              {
                if(value?.trim().isEmpty??true)
                  {
                    return ' Enter Product Name ';
                  }
                return null;
              },
            ),
            TextFormField(
            controller:_PriceTecontroller ,
            decoration:InputDecoration(
            hintText: 'Price ',
            labelText:'Product Price ',
            ),
            validator:(String? value) {
              if (value
          ?.trim()
          .isEmpty ?? true) {
        return ' Enter Product Price  ';
              }
              return null;
            }
            ),
            TextFormField(
            controller: _TotalPriceTecontroller,
            decoration:InputDecoration(
            hintText: 'Total Price ',
            labelText:'Total Price  ',
            ),
            validator:(String? value)
            {
            if(value?.trim().isEmpty??true)
            {
            return ' Enter Total Price   ';
            }
            return null;
            }
            ),
            TextFormField(
            controller:_QuantityTecontroller ,
            decoration:InputDecoration(
            hintText: 'Quantity',
            labelText:'Quantity ',
            ),
            validator:(String? value)
            {
            if(value?.trim().isEmpty??true)
            {
            return ' Enter Quantity ';
            }
            return null;
            }
            ),
            TextFormField(
            controller: _CodeTecontroller,
            decoration:InputDecoration(
            hintText: 'Code',
            labelText:'Code ',
            ),
            validator:(String? value)
            {
            if(value?.trim().isEmpty??true)
            {
            return ' Enter Code';
            }
            return null;
            }
            ),
            TextFormField(
            controller: _ImageTecontroller,
            decoration:InputDecoration(
            hintText: 'Image',
            labelText:'Product  Image  ',
            ),
            validator:(String? value)
            {
            if(value?.trim().isEmpty??true)
            {
            return ' Enter Product  URL ';
            }
            return null;
            }
            ),
            SizedBox(height: 16,),
            ElevatedButton(onPressed:(){}, child:Text('Add Product'))


          ],
        ),
      );
  }
}
