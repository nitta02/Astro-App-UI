import 'package:flutter/material.dart';
import 'package:flutter_moon_app/widgets/custom_dropdown.dart';
import 'package:flutter_moon_app/widgets/page_title.dart';

class HomePage extends StatelessWidget {
  late double _customHeight, _customWidth;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _customHeight = MediaQuery.of(context).size.height;
    _customWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: _customHeight,
              width: _customWidth,
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pageTitle(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _customDropDownButton(),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _customVisitPlace(),
                            _customBookPlace(),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        _bookNow(),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: _customHeight * 0.45,
                    width: _customWidth * 0.85,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/img1.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }

  Widget _customDropDownButton() {
    return CustomDropDown(
      list: const ['Space Staion 1', 'Space Station 2'],
      width: _customWidth,
    );
  }

  Widget _customVisitPlace() {
    return CustomDropDown(
      list: const ['Place 1', 'Place 2'],
      width: _customWidth * 0.35,
    );
  }

  Widget _customBookPlace() {
    return CustomDropDown(
      list: const [
        'Space Place 1',
        'Space Place 2',
      ],
      width: _customWidth * 0.35,
    );
  }

  Widget _bookNow() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Center(
          child: Text(
            'Book NOW',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.8,
            ),
          ),
        ),
      ),
    );
  }
}
