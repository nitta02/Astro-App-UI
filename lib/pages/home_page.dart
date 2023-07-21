import 'package:flutter/material.dart';
import 'package:flutter_moon_app/widgets/page_title.dart';

class HomePage extends StatelessWidget {
  late double _customHeight, _customWeight;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _customHeight = MediaQuery.of(context).size.height;
    _customWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/img1.png',
            ),
          )),
        ),
      ),
    );
  }
}
