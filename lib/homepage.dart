import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // data part
  List pengumumans = [];

  // getPengumuman method
  _getPengumumans() async {
    var pengumuman_url =
        Uri.parse('https://labuan-aset.prototype.com.my/api/pengumuman');
    var response = await http.get(pengumuman_url);
    setState(() {
      pengumumans = json.decode(response.body);
    });
  }

  @override
  void initState() {
    _getPengumumans();

    super.initState();
  }

  // widget part
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 94, 228),
        title: Text(
          "Laman Utama",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF69c5df)),
            height: 240,
            margin: const EdgeInsets.only(bottom: 30),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  pengumumans[0]['tajuk'],
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  pengumumans[0]['info_pengumuman'],
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ]),
            // child: Text(
            //   pengumumans['tajuk'] +
            //   pengumumans['info_pengumuman']
            //   ,
            //   style: TextStyle(fontSize: 30, color: Colors.black),
            // ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FlatButton(
                    onPressed: () => Get.to(() => HomePage()),
                    child: Text(
                      'Aduan dan Permohonan',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FlatButton(
                    onPressed: () => Get.to(() => HomePage()),
                    child: Text(
                      'Senarai Pengumuman',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
