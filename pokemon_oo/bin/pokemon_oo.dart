import 'eletrico.dart';
import 'planta.dart';
import 'pokemon.dart';

void main(List<String> arguments) {
  Eletrico picachu = Eletrico("Pikachu", "Elétrico");
  picachu.weight = 20;
  picachu.attack();

  Planta chikorita = Planta("Chikorita", "Planta");
  chikorita.attack();
  chikorita.attackFolhaNavalha();
}
