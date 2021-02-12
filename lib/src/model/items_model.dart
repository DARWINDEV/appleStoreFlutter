import 'package:flutter/material.dart';

import 'package:apple_store/src/img/images_routes.dart';

class ItemsModel extends ChangeNotifier{

  String _imagen = Images.airpods;

  String get imagen => this._imagen;
  set imagen(String valor){
    this._imagen = valor;
    notifyListeners();
  }

  String _itemName = 'Macbook';

  String get itemName => this._itemName;
  set itemName(String valor){
    this._itemName = valor;
    notifyListeners();
  }

  int _itemPrice = 2000;

  int get itemPrice => this._itemPrice;
  set itemPrice(int valor){
    this._itemPrice = valor;
    notifyListeners();
  }


  Color _color = Color(0xff6c3632);

  Color get color => this._color;
  set color(Color valor){
    this._color = valor;
    notifyListeners();
  }

}