import 'package:crud_app/UI/screen/add_new.dart';
import 'package:crud_app/UI/screen/product_list_screen.dart';
import 'package:crud_app/UI/screen/update_product.dart';
import 'package:flutter/material.dart';
 class Crud extends StatelessWidget
 {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: '/',
      routes:{
 '/':(context)=> productlistscreen(),
        addnew.name:(context)=>addnew(),
        Update.name:(context)=>Update()
      },
    );
  }
   
 }