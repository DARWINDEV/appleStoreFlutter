import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:apple_store/src/model/items_model.dart';

// ignore: must_be_immutable
class ColoresSeleccionWidget extends StatelessWidget {
  
  Color color;
  ColoresSeleccionWidget({this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {

    final itemModel = Provider.of<ItemsModel>(context);
    return GestureDetector(
        onTap: (){
          final itemModel = Provider.of<ItemsModel>(context, listen: false);
          itemModel.color = this.color;
        },
          child: Container(
        alignment: Alignment.center,
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            color: color, 
           shape: BoxShape.circle,
           border: (this.color == itemModel.color) ? Border.all(color: Colors.white) : Border.all(color: Color(0xff131114))
           ),
        
      ),
    );
  }
}
