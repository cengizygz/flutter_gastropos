import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on),
            const SizedBox(width: 10),
            const Text("İş-(Isparta-Merkez", style: TextStyle(fontSize: 18)),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, 'profile');
          },
          child: const Icon(Icons.shopping_cart_sharp),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [],
        ),
      ),
    );
  }

  Container logo() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent, width: 10),
          borderRadius: BorderRadius.circular(30)),
      child: const Text(
        "Gastropos",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromARGB(255, 255, 179, 68),
          fontSize: 50,
        ),
      ),
    );
  }

  Container maps(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.transparent,
    );
  }
}
