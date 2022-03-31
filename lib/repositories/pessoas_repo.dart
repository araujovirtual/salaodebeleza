import 'package:app_salao/models/pessoa.dart';
import 'package:intl/intl.dart';

class PessoasRepo {
  static DateTime now = DateTime.now();
  static String formattedDate = DateFormat('dd-MM-yyyy – kk:mm').format(now);

  static List<Pessoas> lista = [
    Pessoas(
      nome: 'Jucinaldo Simões de Araujo',
      telefone: '(42)99865-0770',
      email: 'araujo@interspeedy.com.br',
      idade: 46,
      sexo: 'Feminino',
      foto: 'assets/images/lara.jpg',
      visita: formattedDate,
      valor: 180.50,
    )
  ];
}
