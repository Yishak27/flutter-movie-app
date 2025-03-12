import 'package:flutter/material.dart';
import 'package:movieapp/core/constant/colorConstant.dart';
import 'package:movieapp/core/constant/textConstant.dart';
import 'package:movieapp/core/providers/movieProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Movieprovider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Textconstant.title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colorconstant.primaryColor,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<Movieprovider>(context).getAllMovie();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(Textconstant.appName),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colorconstant.secondaryColor,
                child: Text(movies[index][1]),
              ),
              subtitle: Text("subtitme"),
              contentPadding: EdgeInsets.all(2),
              trailing: Icon(Icons.arrow_downward),
              // style: ,
              title: Text(movies[index]),
            );
          },
        ),
      ),
    );
  }
}
