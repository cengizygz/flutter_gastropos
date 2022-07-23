import 'package:flutter/material.dart';
import 'package:flutter_gastropos/home.dart';
import 'package:flutter_gastropos/tum_urunle.dart';
import 'package:flutter_gastropos/urun_detay.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'tum_urunler': (_) => tum_urunlerPage(),
        'home': ((_) => homePage()),
        'yiyecek': (_) => urun_detayPage(),
      },
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
