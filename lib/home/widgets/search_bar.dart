import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for products',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}

//Padding(
//  padding: const EdgeInsets.symmetric(24.0)

// child: Container(
//  width: DeviceUtils.getWidth(context),
//  padding: const EdgeInsets.all(16.dp)
//  decoration: BoxDecoration (
//  color: Colors.White,
//  borderRadius: BorderRadius.circular(16.0),
//  border: Border.all(color: Colors.Grey)
//  )

//child: Row(
// children: [
//   Icon(Icons.search_normal, color : Colors.Grey),
//   const SizedBox(width: 20.0),
//    Text("Search products", style : Theme.of(context).
//   ])
//)

//)
