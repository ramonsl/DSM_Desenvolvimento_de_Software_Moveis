import 'evolucaoPokemonGo.dart';
import 'pokemon.dart';

class Eletrico extends Pokemon implements Evolucao{
  Eletrico(String name, String family) : super(name, family);

  @override
  void attack() {
    print("Ataque elétrico");
  }

  @override
  void formaDoce() {
    // TODO: implement formaDoce
  }

  @override
  void formaNatural() {
    // TODO: implement formaNatural
  }

  @override
  void formaPedra(String pedra) {

    // TODO: implement formaPedra
  }
}
