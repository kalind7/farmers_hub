import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer\'s Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Farmer\'s Hub'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.grey[50],
        elevation: 0,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index){
                  return Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      // yo chai paxi images le replace garni from database
                      child: Text("Food Image "+ index.toString()),
                    )
                  );
                },
              ),
            ),
          ),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              hintText: "Search your favourite food item",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.text,
          )
        ],
      ),
    );
  }
}
