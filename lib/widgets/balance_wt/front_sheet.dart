import 'package:exp_app/utils/constants.dart';
import 'package:flutter/material.dart';

class FrontSheet extends StatelessWidget {
const FrontSheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    // ignore: no_leading_underscores_for_local_identifiers
    var _list = List.generate(10, (i) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.grey[900]
          ),
        )  
      )
    );

    return Container(
      decoration: Constants.sheetBoxDecoration(Theme.of(context).primaryColorLight),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: _list
      ),
    );
  }
}