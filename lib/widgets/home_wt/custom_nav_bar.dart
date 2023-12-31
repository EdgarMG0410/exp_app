import 'package:exp_app/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavBar extends StatelessWidget {
const CustomNavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final uiProvider = Provider.of<UIProvider>(context);
    return BottomNavigationBar(
      currentIndex: uiProvider.bnbIndex,
      onTap: (int i) => uiProvider.bnbIndex = i,
      elevation: 0.0,
      items: 
      const[
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined), label: 'Balance'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: 'Graficos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configuracion')
      ]);
  }
}