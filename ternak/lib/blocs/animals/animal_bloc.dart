import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ternak/models/animal_model.dart';

part 'animal_event.dart';
part 'animal_state.dart';

class AnimalBloc extends Bloc<AnimalsEvent, AnimalState> {
  AnimalBloc() : super(AnimalLoading()) {
    on<LoadAnimals>(_onLoadAnimals);
    on<AddAnimal>(_onAddAnimals);
    on<DeleteAnimal>(_onDeleteAnimals);
    on<UpdateAnimal>(_onUpdateAnimals);
  }

  void _onLoadAnimals(LoadAnimals event, Emitter<AnimalState> emit) {
    emit(AnimalLoaded(animals: event.animals));
  }

  void _onAddAnimals(AddAnimal event, Emitter<AnimalState> emit) {
    final state = this.state;
    if (state is AnimalLoaded) {
      emit(AnimalLoaded(
        animals: List.from(state.animals)..add(event.animal),
      ));
    }
  }

  void _onDeleteAnimals(DeleteAnimal event, Emitter<AnimalState> emit) {
    final state = this.state;
    if (state is AnimalLoaded) {
      List<AnimalModel> animals = state.animals.where((tool) {
        return tool.id != event.animal.id;
      }).toList();
      emit(
        AnimalLoaded(animals: animals),
      );
    }
  }

  void _onUpdateAnimals(UpdateAnimal event, Emitter<AnimalState> emit) {}
}
