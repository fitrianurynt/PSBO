part of 'animal_bloc.dart';

abstract class AnimalState extends Equatable {
  const AnimalState();

  @override
  List<Object> get props => [];
}

class AnimalLoading extends AnimalState {}

class AnimalLoaded extends AnimalState {
  final List<AnimalModel> animals;

  const AnimalLoaded({this.animals = const <AnimalModel>[]});

  @override
  List<Object> get props => [animals];
}
