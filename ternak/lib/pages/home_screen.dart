import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ternak/blocs/animals/animal_bloc.dart';
import 'package:ternak/models/animal_model.dart';
import 'package:ternak/pages/form_screen.dart';
import 'package:ternak/widgets/cardWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FAFAFA"),
      appBar: AppBar(
        backgroundColor: HexColor("#797EF6"),
        title: Text("Home"),
      ),
      floatingActionButton: buildNavigateButton(),
      body: BlocBuilder<AnimalBloc, AnimalState>(builder: (context, state) {
        if (state is AnimalLoading) {
          return const CircularProgressIndicator();
        }
        if (state is AnimalLoaded) {
          return Container(
              child: Container(
            margin: EdgeInsets.fromLTRB(8, 12, 8, 12),
            child: ListView.builder(
              itemCount: state.animals.length,
              itemBuilder: (BuildContext context, int i) {
                return CardWidget(
                  context: context,
                  animal: state.animals[i],
                );
              },
            ),
          ));
        } else {
          return const Text("Error");
        }
      }),
    );
  }

  Widget buildNavigateButton() => FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: HexColor("#797EF6"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormScreen()));
        },
      );
}
