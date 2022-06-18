import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final String hintText;
  final List<dynamic> data;
  final List<DropdownMenuItem> items;
  const DropDown(
      {Key? key,
      required this.hintText,
      required this.data,
      required this.items})
      : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState(
      hintText: this.hintText, data: this.data, items: this.items);
}

class _DropDownState extends State<DropDown> {
  String? hintText;
  List<dynamic>? data;
  List<DropdownMenuItem>? items;
  _DropDownState({this.hintText, this.data, this.items});

  List<DropdownMenuItem>? generateItems(
      List<dynamic> options, List<DropdownMenuItem> items) {
    for (var item in options) {
      items.add(DropdownMenuItem(
        child: Text(item.type),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    var selectedType;

    return Container(
      padding: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
      ),
      child: Material(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton<dynamic>(
            style: TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 127, 127, 127)),
            hint: Text(hintText!),
            value: selectedType,
            items: generateItems(data!, items!),
            onChanged: (item) {
              setState(() {
                selectedType = item;
              });
            },
            isExpanded: true,
          ),
        ),
      ),
    );
    ;
  }
}
