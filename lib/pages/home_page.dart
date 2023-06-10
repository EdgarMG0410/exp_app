import 'package:exp_app/pages/balance_page.dart';
import 'package:exp_app/pages/charts_page.dart';
import 'package:flutter/material.dart';
import '../widgets/home_wt/custom_nav_bar.dart';

class HomePage extends StatelessWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const currentIndex = 0;
    switch(currentIndex){
      case 0:
        return const BalancePage();
      case 1:
        return const ChartsPage();
      default :
        return const BalancePage();
    }
  }
}