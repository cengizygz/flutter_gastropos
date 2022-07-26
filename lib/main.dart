import 'package:flutter/material.dart';
import 'package:flutter_gastropos/girisSite.dart';
import 'package:flutter_gastropos/home.dart';
import 'package:flutter_gastropos/profil.dart';
import 'package:flutter_gastropos/providers/user_provider.dart';
import 'package:flutter_gastropos/tum_urunle.dart';
import 'package:flutter_gastropos/urun_detay.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => user_provider()),
      ],
      child: MaterialApp(
        routes: {
          'tum_urunler': (_) => tum_urunlerPage(),
          'home': ((_) => homePage()),
          'yiyecek': (_) => urun_detayPage(),
          'profil': (_) => ProfilPage(),
          'site': (_) => girisSitePage(),
        },
        debugShowCheckedModeBanner: false,
        home: homePage(),
      ),
    );
  }
}
