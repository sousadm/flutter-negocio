import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:negocio/src/auth/components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final cpfFormatter = MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {'#': RegExp(r'[0-9]')},
    );

    final phoneFormatter = MaskTextInputFormatter(
      mask: '## # ####-####',
      filter: {'#': RegExp(r'[0-9]')},
    );

    var botaoSalvar = ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Cadastrar',
        style: TextStyle(fontSize: 18),
      ),
    );

    return Scaffold(
      // backgroundColor: CustomColors.customSwatchColor,
      appBar: AppBar(title: const Text('Cadastro')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              //-- tela de cadastro
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextField(
                      icon: Icons.lock, label: 'Senha', isSecret: true),
                  const CustomTextField(icon: Icons.person, label: 'Nome'),
                  CustomTextField(
                      icon: Icons.phone,
                      label: 'Celular',
                      inputFormatters: [phoneFormatter]),
                  CustomTextField(
                      icon: Icons.file_copy,
                      label: 'CPF',
                      inputFormatters: [cpfFormatter]),
                  SizedBox(
                    height: 50,
                    child: botaoSalvar,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
