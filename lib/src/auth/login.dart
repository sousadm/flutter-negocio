import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:negocio/src/auth/components/custom_banner.dart';
import 'package:negocio/src/auth/components/custom_title.dart';
import 'package:negocio/src/auth/sign_up.dart';
import 'package:negocio/src/base/base_screen.dart';
import 'package:negocio/src/config/custom_color.dart';

import 'components/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //Nome do App
              CustomTitle(titulo: 'LUX', subtitulo: 'negócios', fontSize: 50),
              //categorias
              CustomBannerText(
                  lista: ['cadastro', 'financeiro', 'comercial', 'contábil']),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomTextField(
                icon: Icons.email,
                label: 'E-mail',
              ),
              const CustomTextField(
                icon: Icons.lock,
                label: 'Senha',
                isSecret: true,
              ),

              //botão entrar
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (c) {
                      return BaseScreen();
                    }));
                  },
                  child: const Text('Entrar', style: TextStyle(fontSize: 18)),
                ),
              ),

              //esqueceu a senha
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),

              // divisor
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Ou'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              // botão criar usuário
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.green, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) {
                        return const SignUpScreen();
                      }));
                    },
                    child: const Text('Criar novo usuário',
                        style: TextStyle(fontSize: 18)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
