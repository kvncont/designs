import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      )
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),

      ],
    );
  }

  Widget _colorFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.5),
    );
  }

  Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos(){
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('11°', style: estiloTexto),
          Text('Miércoles',  style: estiloTexto),
          Expanded(child: Container()),          
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _button(),
      ],
    );
  }

  // Alternativa a la solucion mostrada en el  curso
  // En caso de error buscar implementacion original en la leccion 136
  Widget _button(){
    return Center(
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20.0),          
        ),
        elevation: 10.0,
        color: Colors.blue,
        child: Text('Bienvenidos', style: TextStyle(color: Colors.white, fontSize: 20.0),),
        onPressed: (){},
      ),
    );
  }
}