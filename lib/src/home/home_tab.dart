import 'dart:ffi';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:negocio/src/auth/components/custom_title.dart';
import 'package:negocio/src/config/custom_color.dart';

import '../auth/components/custom_text_search.dart';
import 'components/category_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categorias = [
    'Peças',
    'Lubrificantes',
    'Latarias',
    'Pneus',
    'Baterias',
  ];

  String selected = 'Peças';

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
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: CustomColors.customContrastColor,
                badgeContent: const Text('0',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                child: Icon(
                  Icons.shopping_cart,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          //-- pesquisa
          const CustomTextSearch(),

          //-- categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selected = categorias[index];
                    });
                  },
                  categoria: categorias[index],
                  isSelected: categorias[index] == selected,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(width: 10),
              itemCount: categorias.length,
            ),
          ),

          //-- grid
        ],
      ),
    );
  }
}
