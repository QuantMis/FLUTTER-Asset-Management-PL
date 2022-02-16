import 'package:asset_mgmt/api_service/kewpa11_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';
import 'package:asset_mgmt/api_service/kewpa11_api.dart';

class Kewpa11Page extends StatefulWidget {
  const Kewpa11Page({Key? key}) : super(key: key);

  @override
  _Kewpa11PageState createState() => _Kewpa11PageState();
}

class _Kewpa11PageState extends State<Kewpa11Page> {
  List kewpa11_array = [];

  _getKewpa11() async {
    var response = await Kewpa11ApiService().getKewpa11();
    setState(() {
      kewpa11_array = json.decode(response.body);
    });
  }

  @override
  void initState() {
    _getKewpa11();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 94, 228),
        title: Center(
          child: Text(
            "Senarai Borang KEW.PA 11",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "No Rujukan 1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Catatan",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Chip(
                          backgroundColor: Colors.blue,
                          label: Text("STATUS",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.create_outlined,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
