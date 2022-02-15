import 'package:asset_mgmt/borang/kewps8.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';
import 'package:asset_mgmt/api_service/kewps8_api.dart';
import 'package:asset_mgmt/borang/kewps8.dart';

class Kewps8EditPage extends StatefulWidget {
  const Kewps8EditPage({Key? key}) : super(key: key);

  @override
  _Kewps8EditPageState createState() => _Kewps8EditPageState();
}

class _Kewps8EditPageState extends State<Kewps8EditPage> {
  var kuantiti_dimohon = "";
  var catatan_pemohon = "";
  var kewps8_id = "";

  TextEditingController kuantiti_dimohon_edit = new TextEditingController();
  TextEditingController catatan_pemohon_edit = new TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  _getDataFromGetx() async {
    var kewps8 = Get.arguments[0];
    setState(() {
      kewps8_id = json.decode(kewps8)['id'].toString();
      kuantiti_dimohon = json.decode(kewps8)['kuantiti_dimohon'].toString();
      catatan_pemohon = json.decode(kewps8)['catatan_pemohon'].toString();
    });
  }

  _setInitialValue() async {
    kuantiti_dimohon_edit = new TextEditingController(text: kuantiti_dimohon);
    catatan_pemohon_edit = new TextEditingController(text: catatan_pemohon);
  }

  _updateKewps8() async {
    var body = {
      "kuantiti_dimohon": kuantiti_dimohon_edit.text,
      "catatan_pemohon": catatan_pemohon_edit.text
    };

    var response =
        await Kewps8ApiService().updateKewps8(kewps8_id, json.encode(body));
    Get.to(() => Kewps8Page());
  }

  @override
  void initState() {
    _getDataFromGetx();
    _setInitialValue();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 94, 228),
        title: Text(
          "KEWPS 8 No Rujukan: ${kewps8_id}",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
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
                    controller: kuantiti_dimohon_edit,
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
                    controller: catatan_pemohon_edit,
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
                        _updateKewps8();
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
