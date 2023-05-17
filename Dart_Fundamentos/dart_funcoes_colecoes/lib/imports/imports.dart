import 'somas/soma.dart' as soma;
import 'soma_new/soma_new.dart' as soma_new;

void main(List<String> args) {
  var somaD = soma.somaDouble(10.1, 20);
  var somaI = soma_new.somaInt(15, 20);
  print(somaD);
  print(somaI);
}
