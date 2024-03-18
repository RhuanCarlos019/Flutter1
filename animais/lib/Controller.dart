import 'package:animais/Model.dart';

class AnimalController {
  //atributo
  List<Animal> _listAnimal = [];

  //get da list
  List get listarAnimais => _listAnimal;

  //adicionar animal
  void adicionarAnimal(especie, urlFoto, urlAudio) {
    Animal novoAnimal = Animal(especie, urlFoto, urlAudio);
    _listAnimal.add(novoAnimal);
  }
}
