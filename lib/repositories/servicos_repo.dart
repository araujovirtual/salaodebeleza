import 'package:app_salao/models/produtos.dart';
import 'package:app_salao/models/servico.dart';
import 'package:app_salao/repositories/produtos_repo.dart';

class ServicoRepo {
  static List<Servicos> lista = [
    Servicos(
      nome: 'Alisamento',
      valor: 220.10,
      produtos: [
        Produto(nome: 'Sebo', valor: 200),
      ],
    ),
    Servicos(
      nome: 'Escova',
      valor: 250.10,
      produtos: [
        Produto(nome: 'Desemgripante', valor: 150),
      ],
    ),
    Servicos(
      nome: 'Corte',
      valor: 50.10,
      produtos: ProdutosRepo.lista,
    ),
  ];
}
