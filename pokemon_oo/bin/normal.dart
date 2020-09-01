import 'evolucaoPokemonGo.dart';
import 'pokemon.dart';

class Normal extends Pokemon {
  Normal(String name, String family) : super(name, family);

  @override
  void attack() {
    print("Ataque ...");
  }

 
}
