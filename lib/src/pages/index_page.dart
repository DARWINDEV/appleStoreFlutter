import 'package:flutter/material.dart';

import 'package:apple_store/src/pages/descripcionProducto_page.dart';
import 'package:apple_store/src/img/images_routes.dart';
import 'package:apple_store/src/widgets/header_widget.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[Header(), Titulo(), Menu(), Productos()],
        ),
      ),
    );
  }
}

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _crearBotones(context, Images.macbook, 'Macbook', 'Avalible 16th March', 2000),
          _crearBotones(context, Images.iphone11, 'iPhone 11 Pro',
              'Pro cameras. Pro display', 499),
        ]),
        TableRow(children: [
          _crearBotones(context, 
              Images.smarthwatch, 'Apple Watch', 'Apple Watch Series S', 399),
          _crearBotones(context, 
              Images.airpods, 'AirPods Pro', 'AirPods deliver effortless', 249),
        ]),
      ],
    );
  }

  Widget _crearBotones(BuildContext context, String imagen, String nombreProducto,
      String descripcionProducto, int precio) {

        bool fullScreen = false;

    return GestureDetector(
          onTap: (){
            if(!fullScreen){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductoPage()));
            }
          },
          child: Container(
        margin: EdgeInsets.all(15),
        height: 240,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffb4b0b9).withOpacity(0.2))),
        child: Column(
          children: <Widget>[
                     Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagen), fit: BoxFit.contain)),
                ),
              ),

              Text(
                nombreProducto,
                style: TextStyle(
                    color: Color(0xffFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(height: 10),

              Text(
                '\($descripcionProducto\)',
                style: TextStyle(
                    color: Color(0xff9095a5).withOpacity(0.4), fontSize: 11),
              ),
              SizedBox(height: 10),

                          Text(
                '\$ $precio',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  final List menu = [
    'Special Offer',
    'iPhone',
    'iPad',
    'Watch',
    'Mac',
    'Mac',
    'Mac',
    'Mac',
    'Mac',
    'Mac',
    'Mac',
    'Mac',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 20,
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(
              menu[index],
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 15)),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: Text('Apple Store',
          style: TextStyle(fontSize: 28, color: Color(0xffFFFFFF))),
    );
  }
}