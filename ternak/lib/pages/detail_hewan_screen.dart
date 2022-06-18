import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:ternak/blocs/animals/animal_bloc.dart';
import 'package:ternak/models/animal_model.dart';
import 'package:ternak/widgets/details_container.dart';

class DetailHewan extends StatefulWidget {
  final AnimalModel data;
  final BuildContext context;
  const DetailHewan({Key? key, required this.context, required this.data})
      : super(key: key);

  @override
  State<DetailHewan> createState() =>
      _DetailHewanState(context: context, data: this.data);
}

class _DetailHewanState extends State<DetailHewan> {
  _DetailHewanState({required this.context, required this.data});
  BuildContext context;
  AnimalModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Hewan"),
          backgroundColor: HexColor("#797EF6"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/sapi.png'))),
            ),
            details_body(context, data)
          ],
        ));
  }

  Column details_body(BuildContext context, AnimalModel tool) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4 * 2.3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: HexColor("#FEFEFE"),
              borderRadius: BorderRadius.circular(40)),
          padding: EdgeInsets.fromLTRB(20, 28, 20, 0),
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${data.nama}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          size: 36,
                        ),
                        onPressed: () {
                          context
                              .read<AnimalBloc>()
                              .add(DeleteAnimal(animal: data));
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  )
                ],
              ),
              //Title End

              Container(
                margin: EdgeInsets.fromLTRB(0, 18, 0, 8),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ID",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "${data.id}",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              details_container(
                  context: context,
                  judul: "Jenis Kelamin",
                  value: "${data.jenisKelamin}"),
              details_container(
                  context: context, judul: "Umur", value: "${data.umur}"),
              details_container(
                  context: context,
                  judul: "Kesehatan",
                  value: "${data.kesehatan}"),
              details_container(
                  context: context, judul: "Bobot", value: "${data.bobot}"),
              details_container(
                  context: context,
                  judul: "Jenis Pakan",
                  value: "${data.jenisPakan}"),
              details_container(
                  context: context, judul: "Status", value: "${data.status}"),
              details_container(
                  context: context,
                  judul: "Tanggal Masuk",
                  value: "${data.tanggalMasuk}"),
              details_container(
                  context: context,
                  judul: "Tanggal Keluar",
                  value: "${data.tanggalKeluar}"),
            ],
          ),
        )
      ],
    );
  }
}
