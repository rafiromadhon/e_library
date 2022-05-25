import 'package:e_library/main.dart';
import 'package:e_library/pages/page_buku.dart';
import 'package:e_library/pages/page_peminjaman.dart';
import 'package:e_library/pages/page_pengaturan.dart';
import 'package:e_library/pages/page_pengembalian.dart';
import 'package:flutter/material.dart';

class Anggota extends StatelessWidget {
  String _jk = "";

  // void _pilihJk(String value) {
  //   setState(() {
  //     _jk = value;
  //   });
  // }

  // get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital E-Library 📕"),
        backgroundColor: Colors.purpleAccent,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Colors.purpleAccent,
            alignment: Alignment.bottomLeft,
            child: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            leading: Icon(Icons.home),
            title: Text("Dashboard"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Anggota(),
                ),
              );
            },
            leading: Icon(Icons.man),
            title: Text("Anggota"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Buku(),
                ),
              );
            },
            leading: Icon(Icons.book),
            title: Text("Buku"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Peminjaman(),
                ),
              );
            },
            leading: Icon(Icons.arrow_upward),
            title: Text("Peminjaman"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Pengembalian(),
                ),
              );
            },
            leading: Icon(Icons.arrow_downward),
            title: Text("Pengembalian"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Pengaturan(),
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Pengaturan"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            alignment: Alignment.center,
            child: Text("20190801510 - Rafi Nur Romadhon"),
          )
        ],
      )),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "No. Identitas",
                      labelText: "No. Identitas",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Nama",
                      labelText: "Nama",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: "Alamat",
                      labelText: "Alamat",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                // RadioListTile(
                //   value: "L",
                //   groupValue: _jk,
                //   title: Text("Laki-laki"),
                //   onChanged: (String value) {
                //     _pilihJk(value);
                //   },
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
