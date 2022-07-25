// ignore_for_file: avoid_print, non_constant_identifier_names, duplicate_ignore, missing_return, unused_import

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gastropos/models/urun.dart';
import 'package:flutter_gastropos/models/user.dart';

import 'package:http/http.dart' as http;
import '../cons.dart';

// ignore: prefer_const_declarations
final urlapi = url;

// ignore: camel_case_types
class urun_provider with ChangeNotifier {
  List<Urun> uruns = [];

  urun_provider() {
    geturuns();
  }

  Future<String> geturuns() async {
    final url0 = Uri.http(urlapi, 'api/urun');
    final rsp = await http.get(url0, headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Credentials": "true",
      'Content-type': 'application/json',
      'Accept': 'application/json'
    });
    uruns = urunFromJson(rsp.body);
    print(rsp.statusCode);
    return "sucsess";
  }
}
