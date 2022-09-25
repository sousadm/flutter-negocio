import 'package:negocio/models/pessoa/endereco.dart';

class Pessoa {
  int? id;
  String nome;
  String? celular;
  String? email;
  Endereco? endereco;

  Pessoa({
    this.id,
    required this.nome,
    this.celular,
    this.email,
    this.endereco,
  });
}
