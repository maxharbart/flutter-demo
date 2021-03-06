import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // 3
    title: 'Recipe Calculator',
    theme: ThemeData(

        primaryColor: Colors.white,
        accentColor: Colors.black
    ),

      home: MyHomePage(title: 'Recipe Calculator'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(widget.title),
       backgroundColor: Colors.black,

     ),
     body: SafeArea(
       child:
         ListView.builder(
         itemCount: Recipe.samples.length,
         itemBuilder: (BuildContext context, int index) {
           return buildRecipeCard(Recipe.samples[index]);
         },
       )
     ),
   );
 }
 Widget buildRecipeCard(Recipe recipe) {
   return Card(
     child: Column(
       children: <Widget>[
         Image(image: AssetImage(recipe.imageUrl)
         ),
         Text(recipe.label)
       ],
     ),
   );
 }
}
