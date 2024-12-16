

import 'package:flutter/material.dart';
import 'package:patch_store_app/home/screens/home-screen.dart';
import 'package:patch_store_app/home/widgets/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'domain/product_service.dart';
import 'screens/home-screen.dart';

class MyShopApp extends StatelessWidget {
  const MyShopApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(productService: ProductService(client: http.Client())),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  HomeScreen(),
      ),
    );
  }
}



