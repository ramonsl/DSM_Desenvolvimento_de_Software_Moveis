import 'evolucaoAnime.dart';
import 'evolucaoPokemonGo.dart';
import 'normal.dart';

class Eevee extends Normal implements EvolucaoAnime,EvolucaoPokemonGo {
  Eevee(String name, String family) : super(name, family);

  @override
  void formaDoce() {
    print("evoluir aleattório");
  }

  @override
  void formaNatural() {
    // TODO: implement formaNatural
  }

  @override
  void formaPedra(String pedra) {
    if (pedra == "fogo") {
      print("flareon");
    }
  }

  @override
  void formaTroca() {
    // TODO: implement formaTroca
  }
}
