abstract class Pokemon {
  String name;
  String family;
  double _weight;

  void attack() {
    print("${this.name}  ataque normal!");
  }

  set weight(double kg) {
    if (kg > 0 && kg < 100) {
      _weight = kg;
    } else {
      _weight = 0;
    }
  }

  // double get weight {
  //   return _weight;
  // }
  double get weight => _weight;
  // Pokemon(String name, String family) {
  //   this.name = name;
  //   this.family = family;
  // }
  Pokemon(this.name, this.family);

  Pokemon.criar(this.name, this.family) {
    _weight = 10;
  }
}
