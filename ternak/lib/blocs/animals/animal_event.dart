part of 'animal_bloc.dart';

abstract class AnimalsEvent extends Equatable {
  const AnimalsEvent();

  @override
  List<Object> get props => [];
}

class LoadAnimals extends AnimalsEvent {
  final List<AnimalModel> animals;

  const LoadAnimals({this.animals = const <AnimalModel>[]});

  @override
  List<Object> get props => [animals];
}

class AddAnimal extends AnimalsEvent {
  final AnimalModel animal;

  const AddAnimal({required this.animal});

  @override
  List<Object> get props => [animal];
}

class DeleteAnimal extends AnimalsEvent {
  final AnimalModel animal;

  const DeleteAnimal({required this.animal});

  @override
  List<Object> get props => [animal];
}

class UpdateAnimal extends AnimalsEvent {
  final AnimalModel animal;

  const UpdateAnimal({required this.animal});

  @override
  List<Object> get props => [animal];
}
