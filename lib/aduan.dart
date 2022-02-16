import 'package:asset_mgmt/landing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'borang/kewps8.dart';

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
        title: Center(
          child: Text(
            "Aduan dan Permohonan",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                child: Container(
                  width: double.infinity,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                              image: AssetImage('img/kewps8.jpg'),
                              width: 400,
                              height: 230),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("PERMOHONAN STOK",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                              Chip(
                                backgroundColor: Colors.blue,
                                label: Text("KEW.PS 8",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Get.to(Kewps8Page());
                }),
            Container(
              width: double.infinity,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          image: AssetImage('img/kewpa9.jpg'),
                          width: 530,
                          height: 280),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("PERGERAKAN/PINJAMAN ASET",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                          Chip(
                            backgroundColor: Colors.blue,
                            label: Text("KEW.PA 9",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          image: AssetImage('img/kewpa10.jpg'),
                          width: 530,
                          height: 280),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("KEROSAKAN ASET ALIH",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                          Chip(
                            backgroundColor: Colors.blue,
                            label: Text("KEW.PA 10 A",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          image: AssetImage('img/kewpa10b.jpg'),
                          width: 400,
                          height: 230),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("KEROSAKAN KENDERAAN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                          Chip(
                            backgroundColor: Colors.blue,
                            label: Text("KEW.PA 10 B",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
                child: Container(
                  width: double.infinity,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                              image: AssetImage('img/kewpa11.jpg'),
                              width: 530,
                              height: 280),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "PEMERIKSAAN ASET ALIH",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Chip(
                                backgroundColor: Colors.blue,
                                label: Text("KEW.PA 11",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  // Get.to(Kewpa11Page());
                }),
          ],
        ),
      ),
    );
  }
}
