import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  // const BasicoPage({Key key}) : super(key: key);

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {


    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearAcciones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              SizedBox(height: 20.0,)
            ],
          ),
         
        )
      ),
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        height: 250.0,
        fit: BoxFit.cover,
        image: NetworkImage('https://photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg'),
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con atardecer', style: estiloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('Lago del volcan arenal en costa rica', style: estiloSubTitulo,)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 
          textAlign: TextAlign.justify,
        )
      ),
    );
  }
}
