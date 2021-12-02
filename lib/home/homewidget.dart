import 'package:flutter/material.dart';

import '../const.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appname),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded)),
        ],
      ),
      body: const Center(
        child: Text("Homepage"),
      ),
    );
  }
}
