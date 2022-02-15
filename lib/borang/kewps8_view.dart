import 'package:asset_mgmt/borang/kewps8.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';
import 'kewps8.dart';

class Kewps8ViewPage extends StatefulWidget {
  const Kewps8ViewPage({Key? key}) : super(key: key);

  @override
  _Kewps8ViewPageState createState() => _Kewps8ViewPageState();
}

class _Kewps8ViewPageState extends State<Kewps8ViewPage> {
  var kewps8 = "";
  var status = "";
  var kewps8_id = "";
  var kuantiti_dimohon = "";
  var catatan_pemohon = "";
  var catatan_pelulus = "";
  var kuantiti_diterima = "";

  _getDataFromGetx() async {
    setState(() {
      kewps8 = Get.arguments[0];
      kuantiti_dimohon = json.decode(kewps8)['kuantiti_dimohon'].toString();
      catatan_pemohon = json.decode(kewps8)['catatan_pemohon'].toString();
      catatan_pelulus = json.decode(kewps8)['catatan_pelulus'].toString();
      kuantiti_diterima = json.decode(kewps8)['kuantiti_diterima'].toString();
      status = json.decode(kewps8)['status'].toString();
      kewps8_id = json.decode(kewps8)['id'].toString();
    });
  }

  @override
  void initState() {
    _getDataFromGetx();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 94, 228),
        title: Text(
          "KEWPS 8 VIEW",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text("No Rujukan: "),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(
                    backgroundColor: Colors.blue,
                    label:
                        Text(kewps8_id, style: TextStyle(color: Colors.white)),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text("Status: "),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(
                    backgroundColor: Colors.blue,
                    label: Text(status, style: TextStyle(color: Colors.white)),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text("Kuantiti Dimohon: "),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(
                    backgroundColor: Colors.blue,
                    label: Text(kuantiti_dimohon,
                        style: TextStyle(color: Colors.white)),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text("Catatan Pemohon: "),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(
                    backgroundColor: Colors.blue,
                    label: Text(catatan_pemohon,
                        style: TextStyle(color: Colors.white)),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text("Kuantiti Diterima: "),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(
                    backgroundColor: Colors.blue,
                    label: Text(kuantiti_diterima,
                        style: TextStyle(color: Colors.white)),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text("Catatan Pelulus: "),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(
                    backgroundColor: Colors.blue,
                    label: Text(catatan_pelulus,
                        style: TextStyle(color: Colors.white)),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
