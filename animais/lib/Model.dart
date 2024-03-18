class Animal {
  // Atributos
  String _especie;
  String _urlFoto;
  String _urlAudio;

  // Construtor
  Animal(this._especie, this._urlFoto, this._urlAudio);

  // Getters e Setters
  String get especie => _especie;
  set especie(String value) => _especie = value;

  String get urlFoto => _urlFoto;
  set urlFoto(String value) => _urlFoto = value;

  String get urlAudio => _urlAudio;
  set urlAudio(String value) => _urlAudio = value;
}
