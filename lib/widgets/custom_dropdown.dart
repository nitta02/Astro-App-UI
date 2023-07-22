// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  List<String> list;
  double width;
  CustomDropDown({
    Key? key,
    required this.list,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 15,
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: DropdownButton(
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
        ),
        value: list.first,
        items: list.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(e),
            ),
          );
        }).toList(),
        onChanged: (value) {},
      ),
    );
    ;
  }
}
