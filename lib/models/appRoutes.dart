import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/models/menu_option.dart';
import 'package:my_first_app_flutter/screens/buttons_screen.dart';
import 'package:my_first_app_flutter/screens/cards_screen.dart';
import 'package:my_first_app_flutter/screens/containers.dart';
import 'package:my_first_app_flutter/screens/new_screen.dart';

class AppRoutes {
  final List<MenuOption> options = [
    MenuOption(
      route: '/buttons',
      title: 'Botones',
      screen: const ButtonsScreen(),
      icon: const Icon(Icons.smart_button_outlined),
    ),
    MenuOption(
      route: '/rows-columns',
      title: 'Filas y Columnas',
      screen: const ButtonsScreen(),
      icon: const Icon(Icons.grid_on_outlined),
    ),
    MenuOption(
      route: '/containers',
      title: 'Contenedores',
      screen: const ContainersScreen(),
      icon: const Icon(Icons.content_copy),
    ),
    MenuOption(
      route: '/new',
      title: 'Nuevo',
      screen: const NewScreen(),
      icon: const Icon(Icons.add_outlined),
    ),
    MenuOption(
      route: '/cards-screen',
      title: 'Tarjetas',
      screen: const CardsScreen(),
      icon: const Icon(Icons.card_membership_outlined),
    ),
  ];
}