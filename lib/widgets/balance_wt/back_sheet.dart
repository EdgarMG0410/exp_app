import 'package:exp_app/utils/constants.dart';
import 'package:flutter/material.dart';

class BackSheet extends StatelessWidget {
const BackSheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    // ignore: no_leading_underscores_for_local_identifiers
    _headers(String name, String amount){
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 5.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 1.5,
                color: Theme.of(context).cardColor
              )
            )
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              color: Theme.of(context).cardColor
            ),
            )
        ],
      );
    }
    return Container(
      height: 250.0,
      decoration: Constants.sheetBoxDecoration(Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _headers('Ingresos', '\$ 3,500.00'),
          const VerticalDivider(
            thickness: 2.0,
          ),
          _headers('Gastos', '\$ 1,500.00')
        ],
      ),
    );
  }
}