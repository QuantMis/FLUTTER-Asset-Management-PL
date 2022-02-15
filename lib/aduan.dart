import 'package:asset_mgmt/landing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AduanPage extends StatefulWidget {
  const AduanPage({Key? key}) : super(key: key);

  @override
  _AduanPageState createState() => _AduanPageState();
}

class _AduanPageState extends State<AduanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 94, 228),
          title: Text(
            "Aduan dan Permohonan",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            FlatButton(
              onPressed: () => {},
              color: Colors.orange,
              padding: EdgeInsets.all(10.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.add_comment_outlined),
                  Text("PERMOHONAN STOK (KEW.PS 8)")
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Colors.orange,
              padding: EdgeInsets.all(10.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.add_comment_outlined),
                  Text("PERGERAKAN/PINJAMAN ASET ALIH (KEW.PA 9)")
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Colors.orange,
              padding: EdgeInsets.all(10.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.add_comment_outlined),
                  Text("KEROSAKAN ASET ALIH (KEW.PA 10A)")
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Colors.orange,
              padding: EdgeInsets.all(10.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.add_comment_outlined),
                  Text("KEROSAKAN KENDERAAN (KEW.PA 10B)")
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Colors.orange,
              padding: EdgeInsets.all(10.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.add_comment_outlined),
                  Text("PEMERIKSAAN ASET ALIH (KEW.PA 11)")
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Colors.orange,
              padding: EdgeInsets.all(10.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.add_comment_outlined),
                  Text("PELUPUSAN ASET ALIH (KEW.PA 21)")
                ],
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
