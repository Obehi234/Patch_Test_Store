import 'package:flutter/material.dart';
import '../domain/product_service.dart';
import '../model/product.dart';

class ProductProvider with ChangeNotifier {
  final ProductService productService;

  List<Product> _products = [];
  List<Product> _filteredProducts = [];
  List<String> _categories = [];
  String? _selectedCategory;

  ProductProvider({required this.productService});

  List<Product> get products => _filteredProducts;
  List<String> get categories => _categories;
  String? get selectedCategory => _selectedCategory;

  Future<void> fetchProducts() async {
    try {
      _products = await productService.fetchProducts();
      _categories = productService.getCategories(_products);
      _filteredProducts = _products;
      notifyListeners();
    } catch (e) {
      print('Error fetching products: $e');
    }
  }

  void filterProductsByCategory(String? category) {
    _selectedCategory = category;
    if (category == null || category.isEmpty) {
      _filteredProducts = _products;
    } else {
      _filteredProducts = _products.where((product) => product.category == category).toList();
    }
    notifyListeners();
  }

  void sortProductsByPrice(bool ascending) {
    _filteredProducts.sort((a, b) => ascending ? a.price.compareTo(b.price) : b.price.compareTo(a.price));
    notifyListeners();
  }
}

