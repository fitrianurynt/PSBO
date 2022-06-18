import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class details_container extends StatelessWidget {
  const details_container({
    Key? key,
    required this.context,
    required this.judul,
    required this.value,
  }) : super(key: key);

  final BuildContext context;
  final judul;
  final value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 4, 0, 8),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            judul,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
