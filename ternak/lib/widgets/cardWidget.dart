import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ternak/models/animal_model.dart';
import 'package:ternak/pages/detail_hewan_screen.dart';

class CardWidget extends StatelessWidget {
  final AnimalModel animal;
  final BuildContext context;
  const CardWidget({Key? key, required this.context, required this.animal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor("#797EF6"),
      child: ListTile(
        title: Text(
          '${animal.nama}',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
        ),
        subtitle: Text('${animal.jenisKelamin}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700)),
        trailing: IconButton(
          icon: Icon(
            Icons.navigate_next_rounded,
            size: 32,
          ),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DetailHewan(context: context, data: animal)),
            );
          },
        ),
        isThreeLine: true,
      ),
    );
  }
}
