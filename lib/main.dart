import 'package:flutter/material.dart'; 
 
void main() {   runApp(const MyApp()); 
} 
 
class MyApp extends StatelessWidget {   const MyApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) {     return MaterialApp(       title: "Daily Planner App",       home: Scaffold(         backgroundColor: const Color.fromARGB(255, 210, 226, 255),         appBar: AppBar(           title: const Text("Daily Planner App"),           backgroundColor: Colors.blue, 
          centerTitle: true, 
        ), 
        body: const Padding(           padding: EdgeInsets.all(16.0),           child: PlannerHome(), 
        ), 
      ), 
    ); 
  } 
} 
 
class PlannerHome extends StatelessWidget {   const PlannerHome({super.key}); 
 
  void _showSnackBar(BuildContext context, String message) { 
    ScaffoldMessenger.of(context).showSnackBar( 
      SnackBar(content: Text(message)), 
    ); 
  } 
 
  @override 
  Widget build(BuildContext context) {     return Column(       children: [         const Text( 
          "Today's Tasks", 
          style: TextStyle(             fontSize: 20,             fontWeight: FontWeight.bold,             color: Colors.green, 
          ), 
        ), 
        const SizedBox(height: 15),         Row(           mainAxisAlignment: MainAxisAlignment.center, 
          children: [             Column(               children: [                 const Icon(Icons.directions_run, size: 80, color: Colors.blue),                 const SizedBox(height: 8),                 const Text("Morning Run", style: TextStyle(fontSize: 18)),                 const SizedBox(height: 8),                 ElevatedButton(                   onPressed: () => _showSnackBar(context, "Marked Morning Run done"),                   child: const Text("Mark Done"), 
                ), 
              ], 
            ), 
            const SizedBox(width: 40),             Column(               children: [                 const Icon(Icons.group, size: 80, color: Colors.blue),                 const SizedBox(height: 8),                 const Text("Team Meeting", style: TextStyle(fontSize: 18)),                 const SizedBox(height: 8),                 ElevatedButton(                   onPressed: () => _showSnackBar(context, "Marked Team Meeting done"),                   child: const Text("Mark Done"), 
                ), 
              ], 
            ), 
            const SizedBox(width: 40),             Column(               children: [                 const Icon(Icons.shopping_cart, size: 80, color: Colors.blue),                 const SizedBox(height: 8),                 const Text("Grocery Shopping", style: TextStyle(fontSize: 18)),                 const SizedBox(height: 8),                 ElevatedButton(                   onPressed: () => _showSnackBar(context, "Marked Grocery Shopping done"),                   child: const Text("Mark Done"), 
                ), 
              ], 
            ), 
          ], 
        ), 
        const Divider(thickness: 2, height: 40),         const Text( 
          "Task Categories",           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
        ), 
        const SizedBox(height: 15),         Row(           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [             Column(               children: const [ 
                Icon(Icons.favorite, size: 60, color: Colors.red), 
                SizedBox(height: 8), 
                Text(                   "Fitness",                   style: TextStyle(                     fontSize: 15,                     fontWeight: FontWeight.bold,                     color: Colors.red, 
                  ), 
                ), 
              ], 
            ), 
            Column(               children: const [ 
                Icon(Icons.work, size: 60, color: Colors.red), 
                SizedBox(height: 8), 
                Text( 
                  "Work",                   style: TextStyle(                     fontSize: 15,                     fontWeight: FontWeight.bold,                     color: Colors.red, 
                  ), 
                ), 
              ], 
            ), 
            Column(               children: const [ 
                Icon(Icons.local_grocery_store, size: 60, color: Colors.red), 
                SizedBox(height: 8), 
                Text(                   "Errands",                   style: TextStyle(                     fontSize: 15,                     fontWeight: FontWeight.bold,                     color: Colors.red, 
                  ), 
                ), 
              ], 
            ), 
          ], 
        ), 
      ], 
    ); 
  } 
} 
