import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Product Feed'),
      actions: [
        IconButton(
          icon: const Icon(Icons.filter_alt_outlined),
          onPressed: () {
            // Implement filter action
          },
        ),
        IconButton(
          icon: const Icon(Icons.sort),
          onPressed: () {
            // Implement sort action
          },
        ),
      ],
    );
  }
}
