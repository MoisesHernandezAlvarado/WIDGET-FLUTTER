import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });
}

const menuItems = [
  MenuItem(title: 'Contador', subtitle: 'Un contador bonito', link: '/counter', icon: Icons.countertops),
  MenuItem(title: 'Targetas', subtitle: 'Targetas interesantes', link: '/cards', icon: Icons.card_giftcard),
  MenuItem(title: 'Layout', subtitle: 'Una forma de mostrar widgets', link: '/layout', icon: Icons.layers_outlined),
  MenuItem(title: 'Botones', subtitle: 'Botones en flutter', link: '/buttons', icon: Icons.bug_report),
  MenuItem(title: 'Text field', subtitle: 'Botones en flutter', link: '/text-fields', icon: Icons.text_fields),
  MenuItem(title: 'Inicio', subtitle: 'Inicio de la app', link: '/inicio', icon: Icons.home),
];