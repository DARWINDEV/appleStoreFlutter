import 'package:flutter/material.dart';

import 'package:apple_store/src/widgets/header_widget.dart';
import 'package:apple_store/src/widgets/coloresSeleccion_widget.dart';

class ProductoPage extends StatelessWidget {
  final productName, productPrice, imagePrice;

  ProductoPage({this.productName, this.productPrice, this.imagePrice});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
          children: <Widget>[
            Header(),
            Item(imagen: imagePrice),
            Descripcion(
              articuleName: productName,
              articulePrice: productPrice,
            )
          ],
        ),

    );
  }
}

class Descripcion extends StatelessWidget {
  final articuleName, articulePrice;

  const Descripcion({this.articuleName, this.articulePrice});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff131114),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45))),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 45),
              child: Row(children: <Widget>[
                Text(articuleName,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Spacer(),
                Text('\$$articulePrice',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ]),
            ),
            Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
                child: Text(
                  'Dolor aliqua sunt proident eu ea cupidatat excepteur culpa. Elit voluptate commodo tempor labore ad dolor dolor. Excepteur reprehenderit excepteur qui aliqua velit. Anim irure qui pariatur ipsum eu aute sit qui dolore nisi.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16, color: Color(0xffFFFFFF).withOpacity(0.5)),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 140,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(80)),
                    child: Text('Pre-order'),
                  ),
                  Spacer(),
                  ColoresSeleccionWidget(
                    color: Color(0xff6c3632),
                  ),
                  SizedBox(width: 15),
                  ColoresSeleccionWidget(
                    color: Color(0xff4b494e),
                  ),
                  SizedBox(width: 15),
                  ColoresSeleccionWidget(
                    color: Color(0xffFFFFFF),
                  ),
                ],
              ),
              
            )
          ],
        ));
  }
}

class Item extends StatelessWidget {
  final imagen;

  Item({this.imagen});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imagen,
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagen), fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
