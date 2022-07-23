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

  Padding score(double score) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1),
                )
              ]),
          width: 80,
          height: 25,
          child: Row(
            children: [
              const Icon(Icons.star, color: Color.fromARGB(255, 240, 192, 34)),
              Text(
                "$score / 10",
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0), fontSize: 16),
              ),
            ],
          )),
    );
  }

  Container category(categoryText, bool ticked) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: InkWell(
          child: Container(
            width: 120,
            decoration: BoxDecoration(
                color: ticked == true
                    ? Color.fromARGB(255, 255, 0, 0)
                    : Colors.white,
                border: Border.all(color: Colors.transparent, width: 5),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    offset: const Offset(0, 1),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(categoryText),
                ticked == true
                    ? Icon(Icons.cancel, color: Colors.white)
                    : Icon(Icons.arrow_drop_down_circle,
                        color: Color.fromARGB(255, 255, 0, 0))
              ],
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, 'tum_urunler');
          },
        ),
      ),
    );
  }

  Container item(BuildContext context, String photo, String company) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: Column(
          children: [
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.5),
                      )
                    ]),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.height * 0.22,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'tum_urunler');
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$company",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ));
  }

  SizedBox search(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(05.0),
              ),
            ),
            hintText: 'Neye ihtiyacın var?',
            prefixIcon: Icon(Icons.search),
          ),
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
