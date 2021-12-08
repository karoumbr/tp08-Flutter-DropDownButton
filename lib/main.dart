import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DropDownButton Demo'),
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

  String SelectedValue='Cartes de développement';
  List ListeFamilles = ['Cartes de développement','Modules','Capteurs','Batteries','Visseries','Moteurs','Afficheurs'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
      Column(
        children: [

            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            Center(
              child: DropdownButton(
                hint: Text('Sélectionnez un élément:'),
                value: SelectedValue,
                onChanged: (newValue){
                  setState(() {
                    //set the new selected value
                    SelectedValue = newValue.toString();
                  });
                }, items: ListeFamilles.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
              ),
            ),
            Text('élément sélectionné: ${SelectedValue}' ),
        ],
      )

    );
  }
}
