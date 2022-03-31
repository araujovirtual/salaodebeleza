import 'package:app_salao/models/pessoa.dart';
import 'package:app_salao/repositories/pessoas_repo.dart';
import 'package:app_salao/repositories/servicos_repo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/servico.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({Key? key}) : super(key: key);

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

final List<Pessoas> lista = PessoasRepo.lista;
final List<Servicos> servicos = ServicoRepo.lista;
NumberFormat dinheiro =
    NumberFormat.compactCurrency(name: 'R\$', decimalDigits: 2);

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: listaDados(),
    );
  }
}

Widget containerFoto() {
  return Align(
    alignment: Alignment.center,
    child: Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        border: Border.all(),
        boxShadow: const [
          BoxShadow(
            color: Colors.red,
            blurRadius: 40,
          )
        ],
        image: DecorationImage(
          image: AssetImage(lista[0].foto),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(180)),
      ),
      child: const Align(
        child: Icon(
          Icons.camera_enhance,
          color: Colors.red,
          size: 33,
        ),
        alignment: Alignment(-1, 1),
      ),
    ),
  );
}

Widget listaDados() {
  return Column(
    children: [
      Expanded(
        child: containerFoto(),
        flex: 3,
      ),
      Expanded(
        child: detalhesCliente(),
        flex: 3,
      ),
      Expanded(
        child: containerNome(),
        flex: 1,
      ),
      Expanded(
        child: containerAcaoes(),
        flex: 3,
      )
    ],
  );
}

/* Widget infoDados() {
  // ignore: avoid_unnecessary_containers
  return Container(
      child: ListView.separated(
    itemBuilder: (BuildContext context, int indice) {
      return ListTile(
        leading: const Icon(
          Icons.phone_callback,
          size: 30,
        ),
        trailing: Text(lista[indice].valor.toString()),
        subtitle: Text(lista[indice].visita),
      );
    },
    separatorBuilder: (context, contexto) => const Divider(
      color: Colors.red,
    ),
    itemCount: lista.length,
  ));
} */

Widget containerNome() {
  return Container(
    width: double.infinity,
    color: Colors.amber,
    child: Center(
      child: Text(
        lista[0].nome,
        style: estiloDeTextoDetalhes(),
      ),
    ),
  );
}

Widget containerAcaoes() {
  return Container(
    color: Colors.red,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Coluna Idade telefone
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'Deletar',
                    style: estiloTextoIcons(),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.edit_note,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'Editar',
                    style: estiloTextoIcons(),
                  ),
                ],
              ),
            ],
          ),
        ), // Coluna idade telefone

        // Coluna Sexo e email
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.room_service_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'Histórico',
                    style: estiloTextoIcons(),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.timer,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'Agendamento',
                    style: estiloTextoIcons(),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Coluna Sexo e Email
      ],
    ),
  );
}

Widget detalhesCliente() {
  return Container(
    color: Colors.red,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Coluna Idade telefone
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.date_range,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'idade',
                    style: estiloTextoIcons(),
                  ),
                  Text(
                    lista[0].idade.toString(),
                    style: estiloTextoIconsub(),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'Telefone',
                    style: estiloTextoIcons(),
                  ),
                  Text(
                    lista[0].telefone,
                    style: estiloTextoIconsub(),
                  ),
                ],
              ),
            ],
          ),
        ), // Coluna idade telefone

        // Coluna Sexo e email
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.transgender,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'Sexo',
                    style: estiloTextoIcons(),
                  ),
                  Text(
                    lista[0].sexo,
                    style: estiloTextoIconsub(),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'Email',
                    style: estiloTextoIcons(),
                  ),
                  Text(
                    lista[0].email,
                    style: estiloTextoIconsub(),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Coluna Sexo e Email
      ],
    ),
  );
}

estiloDeTextoDetalhes() {
  return const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.red,
  );
}

estiloTextoIcons() {
  return const TextStyle(
    color: Colors.white,
  );
}

estiloTextoIconsub() {
  return const TextStyle(
    color: Colors.yellow,
  );
}

Widget servDetalhes() {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: ListView.separated(
      itemBuilder: (BuildContext context, int indice) {
        return ListTile(
          leading: const Icon(Icons.done_outlined),
          trailing: Text(dinheiro.format(servicos[indice].valor)),
          title: Text(servicos[indice].nome),
          //subtitle: Text(servicos[indice].produtos[indice].nome),
          //subtitle: Text(servicos[indice].produtos[indice].nome),
        );
      },
      separatorBuilder: (context, contexto) => const Divider(
        color: Colors.red,
      ),
      itemCount: servicos.length,
    ),
  );
}
