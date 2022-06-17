import 'package:flutter/material.dart';
// import '../widgets/button.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

//text field widget
Widget _inputFieldWidget({String? hintText, int? maxLines}) {
  return Container(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(20.0),
      child: TextField(
        maxLines: maxLines,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Color.fromARGB(255, 245, 245, 249))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    ),
  );
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 121, 126, 246),
          title: Text("Tambah Hewan"),
          leading: Icon(Icons.arrow_left),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color: Color.fromARGB(255, 121, 126, 246),
            child: Column(children: [
              _inputFieldWidget(hintText: 'ID'),
              _inputFieldWidget(hintText: 'Jenis Kelamin'),
              _inputFieldWidget(hintText: 'Umur'),
              _inputFieldWidget(hintText: 'Kesehatan'),
              _inputFieldWidget(hintText: 'Bobot'),
              _inputFieldWidget(hintText: 'Jenis Pakan'),
              _inputFieldWidget(hintText: 'Status'),
              _inputFieldWidget(hintText: 'Tanggal Masuk'),
              _inputFieldWidget(hintText: 'Tanggal Keluar'),
              // Button(
              //     title: 'Simpan', onTap: () {}) 
            ]),
          )
        ],
      ),
    );
  }
}
