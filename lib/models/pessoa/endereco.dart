import 'package:negocio/models/pessoa/Municipio.dart';

class Endereco {
  final String logradouro;
  final String bairro;
  final Municipio municipio;

  Endereco(
    this.logradouro,
    this.bairro,
    this.municipio,
  );
}
