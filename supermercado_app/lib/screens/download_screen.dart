import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supermercado_app/constants.dart';
import 'package:supermercado_app/screens/home/end.dart';
import 'package:supermercado_app/screens/home/home_screen.dart';
import 'package:supermercado_app/screens/home/homec.dart';
import 'package:supermercado_app/screens/home/homesf.dart';

class MyAppv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Supermarket Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  initialise() {
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:HomeScreen(), 
      floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
       floatingActionButton: Padding(
            padding: const EdgeInsets.all(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApP()))
              .then((value) {
            if (value != null) {
              initialise();
            }}
          );},
            tooltip: 'Decrement',
            heroTag: 'Decrement',
            child: Icon(Icons.image_aspect_ratio),
          ),]
  
    )
       ),

    );
}
}

//Frutas
class MyApP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      home: const MyPage(title: 'Supermarket Home Page'),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  initialise() {
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Homesf(),
      floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
       floatingActionButton: Padding(
            padding: const EdgeInsets.all(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyAppf()))
              .then((value) {
            if (value != null) {
              initialise();
            }}
          );},
            tooltip: 'Decrement',
            heroTag: 'Decrement',
            child: Icon(Icons.image_aspect_ratio),
          ),]
  
    )
       ),

    );
}
}

//carnes
class MyAppf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      home: const MyHoPage(title: 'Supermarket Home Page'),
    );
  }
}

class MyHoPage extends StatefulWidget {
  const MyHoPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHoPage> createState() => _MyHoPageState();
}

class _MyHoPageState extends State<MyHoPage> {
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  initialise() {
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Homec(), 
      floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
       floatingActionButton: Padding(
            padding: const EdgeInsets.all(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyAppc()))
              .then((value) {
            if (value != null) {
              initialise();
            }}
          );},
            tooltip: 'Decrement',
            heroTag: 'Decrement',
            child: Icon(Icons.image_aspect_ratio),
          ),]
  
    )
       ),

    );
}
}

//granos y azucar
class MyAppc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      home: const MyHomPage(title: 'Supermarket Home Page'),
    );
  }
}

class MyHomPage extends StatefulWidget {
  const MyHomPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomPage> createState() => _MyHomPageState();
}

class _MyHomPageState extends State<MyHomPage> {
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  initialise() {
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Homega(), 
      floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
       floatingActionButton: Padding(
            padding: const EdgeInsets.all(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyAppga()))
              .then((value) {
            if (value != null) {
              initialise();
            }}
          );},
            tooltip: 'Decrement',
            heroTag: 'Decrement',
            child: Icon(Icons.image_aspect_ratio),
          ),]
  
    )
       ),

    );
}
}

//end
class MyAppga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      home:HeroApp(),
    );
  }
  }

/*
class MyHPage extends StatefulWidget {
  const MyHPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHPage> createState() => _MyHPageState();
}

class _MyHPageState extends State<MyHPage> {
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  initialise() {
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Homega(), 
      floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
       floatingActionButton: Padding(
            padding: const EdgeInsets.all(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyAppend()))
              .then((value) {
            if (value != null) {
              initialise();
            }}
          );},
            tooltip: 'Decrement',
            heroTag: 'Decrement',
            child: Icon(Icons.image_aspect_ratio),
          ),]
  
    )
       ),

    );
}
}

//end
class MyAppend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      home:HeroApp(),
    );
  }
}*/