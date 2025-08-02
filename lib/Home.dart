import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
        backgroundColor: Colors.lightBlue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World!', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.red,
            ),),

            SizedBox(height: 15,),

            Text('Welcome to Flutter!', style: TextStyle(
              fontSize: 20,
            ),),
            
            SizedBox(height: 15,),

        Image.asset('asset/flutter.png', height: 100, width: 150),

            SizedBox(height: 15,),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Button Pressed!')),
                );
              }, child: Text('Click Me'),),
          ],
        ),
      ),
    );
  }
}
