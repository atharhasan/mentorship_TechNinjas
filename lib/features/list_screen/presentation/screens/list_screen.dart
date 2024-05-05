import 'package:flutter/material.dart';
import 'package:spacex_app/core/theming/style.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key, required this.titleScreen});
  final String titleScreen;

  @override
  Widget build(BuildContext context) {
    //this code only for testing navigation.
    return Scaffold(
      appBar: AppBar(
        title: Text(titleScreen, style: TextStyles.f18W900ItalicBlack,),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('List Screen'),
      ),
    );
  }
}
