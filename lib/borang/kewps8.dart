import 'package:asset_mgmt/borang/kewps8_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';
import 'kewps8_create.dart';
import 'kewps8_view.dart';
import 'kewps8_edit.dart';

class Kewps8Page extends StatefulWidget {
  const Kewps8Page({Key? key}) : super(key: key);

  @override
  _Kewps8PageState createState() => _Kewps8PageState();
}

class _Kewps8PageState extends State<Kewps8Page> {
  List kewps8_array = [];

  _getKewps8() async {
    var kewps8_url =
        Uri.parse('https://labuan-aset.prototype.com.my/api/kewps8');
    var response = await http.get(kewps8_url);

    setState(() {
      kewps8_array = json.decode(response.body);
    });
  }

  // init
  @override
  void initState() {
    _getKewps8();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 94, 228),
        title: Text(
          "KEW.PS 8",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < kewps8_array.length; i++)
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      Text("No Rujukan: ${kewps8_array[i]['id'].toString()}"),
                      Chip(
                        backgroundColor: Colors.blue,
                        label: Text(kewps8_array[i]['status'],
                            style: TextStyle(color: Colors.white)),
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('KEMASKINI'),
                          onPressed: () {
                            var kewps8_data = json.encode(kewps8_array[i]);
                            Get.to(Kewps8EditPage(), arguments: [kewps8_data]);
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('LIHAT'),
                          onPressed: () {
                            var kewps8_data = json.encode(kewps8_array[i]);
                            Get.to(Kewps8ViewPage(), arguments: [kewps8_data]);
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.chevron_left),
                    onPressed: () {},
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add),
                    onPressed: () => Get.to(() => Kewps8CreatePage()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
