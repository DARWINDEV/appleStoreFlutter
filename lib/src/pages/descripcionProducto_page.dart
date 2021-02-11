import 'package:apple_store/src/img/images_routes.dart';
import 'package:apple_store/src/widgets/coloresSeleccion_widget.dart';
import 'package:flutter/material.dart';

import 'package:apple_store/src/widgets/header_widget.dart';

class ProductoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[Header(), Item(), Descripcion()],
        ),
      ),
    );
  }
}

class Descripcion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.42,
        decoration: BoxDecoration(
            color: Color(0xff131114),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45))),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 45),
              child: Row(children: <Widget>[
                Text('AirPods Pro', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Spacer(),
                Text('\$999', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ]),
            ),
            Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
                child: Text(
                  'Dolor aliqua sunt proident eu ea cupidatat excepteur culpa. Elit voluptate commodo tempor labore ad dolor dolor. Excepteur reprehenderit excepteur qui aliqua velit. Anim irure qui pariatur ipsum eu aute sit qui dolore nisi.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFFFFFF).withOpacity(0.5)
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
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
                  ColoresSeleccionWidget(color: Color(0xff6c3632),),
                  SizedBox(width: 15),
                  ColoresSeleccionWidget(color: Color(0xff4b494e),),
                  SizedBox(width: 15),
                  ColoresSeleccionWidget(color: Color(0xffFFFFFF),),
                ],
              ),
            )
          ],
        ));
  }
}

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
                image: AssetImage(Images.airpods), fit: BoxFit.contain)),
      ),
    );
  }
}
