import 'package:assertaroundyou/error.dart';
import 'package:flutter/material.dart';

import 'home/homewidget.dart';

class Wapper extends StatelessWidget {
  const Wapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (1 > 2) ?const Home() :const  ErrorPage();
  }
}
