import 'package:flutter/material.dart';

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermercado'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.asset('assets/images/supermercado.jpg',)
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset('assets/images/supermercado.jpg',)
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}






/*class ImplicitAnimations extends StatefulWidget {
  ImplicitAnimations({Key? key}) : super(key: key);

  @override
  _ImplicitAnimationsState createState() => _ImplicitAnimationsState();
}

class _ImplicitAnimationsState extends State<ImplicitAnimations>{
  bool fullSize = false;
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Supermercado AnimacionImplicito'),),
    body: Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        curve: Curves.bounceOut,
        color: Colors.indigo,
        height: fullSize ? MediaQuery.of(context).size.height : 200,
        width: fullSize ? MediaQuery.of(context).size.width : 200,
        alignment: fullSize ? Alignment.topCenter : Alignment.center,
        child: GestureDetector(
          onTap: (){
            setState(() {
              fullSize = !fullSize;
              opacity = opacity == 1.0 ? .2 : 1.0; 
            });
          },
          child : AnimatedOpacity(opacity: opacity, 
          duration: Duration(milliseconds: 500), curve: Curves.bounceInOut,
          child: Text('No olvides volver a hacer tus compras con nosotros Tú Supermercado de Pedidos en Linea', style: TextStyle(color: Colors.white),),),
          
        ),
        
      ),
    ),
    );
  }
}


class ImplicitAnimationsim extends StatefulWidget {
  ImplicitAnimationsim({Key? key}) : super(key: key);

  @override
  _ImplicitAnimationsimState createState() => _ImplicitAnimationsimState();
}

class _ImplicitAnimationsimState extends State<ImplicitAnimationsim>{
  bool fullSize = false;
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Supermercado AnimacionImplicito'),),
    body: Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        curve: Curves.bounceOut,
        color: Colors.indigo,
        height: fullSize ? MediaQuery.of(context).size.height : 200,
        width: fullSize ? MediaQuery.of(context).size.width : 200,
        alignment: fullSize ? Alignment.topCenter : Alignment.center,
        child: GestureDetector(
          onTap: (){
            setState(() {
              fullSize = !fullSize;
              opacity = opacity == 1.0 ? .2 : 1.0; 
            });
          },
          child : AnimatedOpacity(opacity: opacity, 
          duration: Duration(milliseconds: 500), curve: Curves.bounceInOut,
          child: Text('No olvides volver a hacer tus compras con nosotros Tú Supermercado de Pedidos en Linea', style: TextStyle(color: Colors.white),),),
          
        ),
        
      ),
    ),
    );
  }
}*/