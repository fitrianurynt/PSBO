import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddField extends StatefulWidget {
  const AddField({Key? key}) : super(key: key);

  @override
  State<AddField> createState() => _AddFieldState();
}

class _AddFieldState extends State<AddField> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahabat Ternak',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sahabat Ternak'),
        ),
        body: ListView(
          children: [
            CardAnimal(title: "Tambahkan Hewan", icn: Icons.add,),
            CardAnimal(title: "Daftar Hewan", icn: Icons.list)
          ],
        ),
      ),
    );
  }
}

class CardAnimal extends StatelessWidget {
  final String title;
  final IconData icn;

  const CardAnimal({Key? key, required this.title, required this.icn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid)),
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 100, top: 50, left: 50, right: 50),
        child: Container(
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icn,
                  color: Colors.white,
                ),
                Text("${title}",
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ],
            )),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 119, 119, 194))),
      ),
    );
  }
}
