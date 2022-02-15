import 'package:asset_mgmt/borang/kewps8.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';
import 'kewps8.dart';
import 'package:asset_mgmt/api_service/kewps8_api.dart';

class Kewps8CreatePage extends StatefulWidget {
  const Kewps8CreatePage({Key? key}) : super(key: key);

  @override
  _Kewps8CreatePageState createState() => _Kewps8CreatePageState();
}

class _Kewps8CreatePageState extends State<Kewps8CreatePage> {
  // submit form method
  _submitKewps8() async {
    var body = {
      "kuantiti_dimohon": kuantiti_dimohon.text,
      "catatan_pemohon": catatan_pemohon.text
    };

    var response = await Kewps8ApiService().createKewps8(json.encode(body));
    Get.to(() => Kewps8Page());
  }

  //TextController to read text entered in text field
  TextEditingController kuantiti_dimohon = TextEditingController();
  TextEditingController catatan_pemohon = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 94, 228),
        title: Text(
          "KEW.PS 8 ADD",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: kuantiti_dimohon,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Kuantiti Dimohon'),
                    validator: (value) {
                      if (value == null) {
                        return 'Sila masukkan kuantiti';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: catatan_pemohon,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Catatan Pemohon'),
                    validator: (value) {
                      if (value == null) {
                        return 'Sila masukkan catatan';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        _submitKewps8();
                      } else {}
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue, width: 2)),
                    textColor: Colors.white,
                    child: Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
