import 'package:flutter/material.dart';
import 'package:library_system/features/library/presentation/views/widgets/custom_book_library.dart';

class CustomBookLibraryGridView extends StatelessWidget {
  const CustomBookLibraryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return const CustomBookLibrary();
          },
          childCount: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عمودين
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.55, // تحكم في شكل الكتاب
        ),
      ),
    );
  }
}
