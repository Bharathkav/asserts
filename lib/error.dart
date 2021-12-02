import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
            icon: const Icon(Icons.backspace_rounded),),
        title: const Text("Error"),
        centerTitle: true,
      ),
      body: const Center(

      //  child: Image(image: AssetImage('asserts/error.png'),),
      child: Text(
        'Error Page'
      ),
      ),
    );
  }
}
