import 'package:flutter/material.dart';
import 'package:negocio/src/auth/components/custom_title.dart';
import 'package:negocio/src/config/custom_color.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-- App Bar
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const CustomTitle(titulo: 'Home'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: CustomColors.customSwatchColor,
            ),
          ),
        ],
      ),

      //-- pesquisa

      //-- categorias

      //-- grid
    );
  }
}
