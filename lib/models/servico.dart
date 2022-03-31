import 'package:app_salao/models/produtos.dart';

class Servicos {
  String nome;
  double valor;
  late List<Produto> produtos;
  Servicos({
    required this.nome,
    required this.valor,
    required this.produtos,
  });
}
