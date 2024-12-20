import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //buttons
            ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
            const SizedBox(height: 12,),
            OutlinedButton(onPressed: (){}, child: Text('Outlined')),
            TextButton(onPressed: (){}, child: Text("Text Buttom"))
          ]
        ),
      ),
    );
  }
}