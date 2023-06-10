import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
const CustomNavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      elevation: 0.0,
      items: 
      const[
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined), label: 'Balance'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: 'Graficos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configuracion')
      ]);
  }
}