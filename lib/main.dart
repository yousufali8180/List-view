import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DashBoard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Yousuf', 'Tanjin', 'Ebrahim', 'Atik', 'Anis', 'Robiul'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("DashBoard"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.add),
        );
      },
      itemCount: arrNames.length,
      separatorBuilder: (context, index){
        return Divider(height:20, thickness: 1,);
      },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
