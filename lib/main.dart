import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("AJ P. Josol",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
          leading: Tooltip(
            message: 'Menu',
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: (){},
            ),
          ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'Home',
            onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: (){},
            ),
        ],
        ),
        body:Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  IconButton(
                    icon: const Icon(Icons.delete),
                    tooltip: 'Delete',
                    onPressed: (){},
                  ),
            ],
            ),
            Expanded(
             flex:2,
              child: Row(
                children: [
                  Image.network(
                          'https://facebook.com/aj.josol.90', // Network image of student
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
              ],
              ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(bottom: 10),
              ),
              Container(
                color: Colors.black12,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(bottom: 10),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              child: 
              Text(
                'Midterm Exam nga alas 7:30 sa Buntag',
                style: TextStyle(
                  color: Colors.yellowAccent,
                ),   
              ),
              ),
          ],
        
        ),
        
        ),
        
        bottomNavigationBar: 
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              tooltip: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              tooltip: 'Contact me'
            ),
          ],
        )
      ),
    );  
  }
}
