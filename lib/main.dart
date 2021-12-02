import 'package:assertaroundyou/routes_class.dart';
import 'package:assertaroundyou/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
//User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Asserts Around You",
     home: Wapper(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
