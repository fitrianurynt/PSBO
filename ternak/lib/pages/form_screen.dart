import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ternak/blocs/animals/animal_bloc.dart';
import 'package:ternak/models/animal_model.dart';
import 'package:ternak/widgets/drop_down.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

//text field widget
Widget _inputField(String field, TextEditingController controller) {
  return Container(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(20.0),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: field,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Color.fromARGB(255, 64, 123, 255))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    ),
  );
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controllerId = TextEditingController();
    TextEditingController controllerNama = TextEditingController();
    TextEditingController controllerJenisKelamin = TextEditingController();
    TextEditingController controllerUmur = TextEditingController();
    TextEditingController controllerKesehatan = TextEditingController();
    TextEditingController controllerBobot = TextEditingController();
    TextEditingController controllerJenisPakan = TextEditingController();
    TextEditingController controllerStatus = TextEditingController();
    TextEditingController controllerTanggalMasuk = TextEditingController();
    TextEditingController controllerTanggalKeluar = TextEditingController();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
            backgroundColor: HexColor("#797EF6"), title: Text("Tambah Hewan ternak")),
      ),
      body: BlocListener<AnimalBloc, AnimalState>(
        listener: (context, state) {
          if (state is AnimalLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Tool Added!"),
              ),
            );
          }
        },
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Color.fromARGB(255, 250, 250, 250),
              child: Column(children: [
                _inputField('Nama', controllerNama),
                _inputField('ID', controllerId),
                _inputField('Jenis Kelamin', controllerJenisKelamin),
                _inputField('Umur', controllerUmur),
                _inputField('Kesehatan', controllerKesehatan),
                _inputField('Bobot', controllerBobot),
                _inputField('JenisPakan', controllerJenisPakan),
                _inputField('Status', controllerStatus),
                _inputField('TanggalMasuk', controllerTanggalMasuk),
                _inputField('TanggalKeluar', controllerTanggalKeluar),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 14),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: HexColor("#797EF6")),
                          onPressed: () {
                            var animal = AnimalModel(
                              nama: controllerNama.value.text,
                              id: controllerId.value.text,
                              jenisKelamin: controllerJenisKelamin.value.text,
                              umur: controllerUmur.value.text,
                              kesehatan: controllerKesehatan.value.text,
                              bobot: controllerBobot.value.text,
                              jenisPakan: controllerJenisPakan.value.text,
                              status: controllerStatus.value.text,
                              tanggalMasuk: controllerTanggalMasuk.value.text,
                              tanggalKeluar: controllerTanggalKeluar.value.text,
                            );
                            context
                                .read<AnimalBloc>()
                                .add(AddAnimal(animal: animal));
                            Navigator.pop(context);
                          },
                          child: const Text("SIMPAN")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              onPrimary: Colors.white,
                              onSurface: Colors.red,
                              shadowColor: Colors.red),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("BATAL")),
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
