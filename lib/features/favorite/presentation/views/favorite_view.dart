import 'package:flutter/material.dart';
import 'package:library_system/core/widgets/custom_app_bar.dart';
import 'package:library_system/features/favorite/presentation/views/widgets/favorite_view_body.dart';
class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  static const String routeName = 'favorite_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Book Wise"),
      body: FavoriteViewBody(),
    );
  }
}
