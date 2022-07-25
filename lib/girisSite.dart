import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gastropos/providers/user_provider.dart';
import 'package:provider/provider.dart';

class girisSitePage extends StatefulWidget {
  @override
  _girisSitePageState createState() => _girisSitePageState();
}

class _girisSitePageState extends State<girisSitePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController pass = TextEditingController();
    final formKey = GlobalKey<FormState>();

    final userprovider = Provider.of<user_provider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('giriş yapınız'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                      controller: username,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: 'email',
                        labelText: 'email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (usr) {
                        if (usr == null || usr.isEmpty) {
                          return "Kullanıcı Adı Giriniz";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      controller: pass,
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: 'şifre',
                        labelText: 'şifre',
                        border: OutlineInputBorder(),
                      ),
                      validator: (pwd) {
                        if (pwd == null || pwd.isEmpty) {
                          return "Şifre Giriniz";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  MaterialButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            if (userprovider.users
                                .where((e) =>
                                    e.kullaniciAdi == username.text &&
                                    e.sifre == pass.text)
                                .isNotEmpty) {
                              Navigator.pushReplacementNamed(context, 'home');
                            }
                          });

                          print(
                              "${userprovider.users}, ${username.text}, ${pass.text}");
                        }
                      },
                      color: Colors.red,
                      child: const Text('giriş yap',
                          style: TextStyle(
                            color: Colors.white,
                          ))),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('hesabınız yok mu? kayıt olun')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Hemen üye olarak sistemimizin ayrıcalıklarından faydalanın',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Üye Olun',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Üye olarak size özel kampanyalardan faydalanabilirsiniz',
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Puan toplayın',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Kazandığınız puanları dilediğinizce harcayabilirsiniz',
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Online ödeme',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Siparişlerinizin ödemesini online olarak yaparak, puan toplayabilirsiniz',
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Kurye takibi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Siparişinizin takibini harita üzerinden takip ederek, size ulaşma süresini görebilirsiniz.',
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
