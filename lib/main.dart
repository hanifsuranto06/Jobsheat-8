import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Biodata Nama',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                buatKotak(Colors.greenAccent, 100, 'Hanif'),
                buatKotak(Colors.orangeAccent, 70, 'Wahyu'),
                buatKotak(Colors.greenAccent, 50, 'Taufik'),
                buatKotak(Colors.orangeAccent, 90, 'Faisal'),
                buatKotak(Colors.red, 110, 'Affan'),
                buatKotak(Colors.blue, 30, 'Dwiki'),
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}

Widget buatKotak(Color warna, double ukuran, String nama) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: warna,
        ),
        height: ukuran,
        width: ukuran,
        margin: EdgeInsets.all(10),
      ),
      Text(
        nama,
        textAlign: TextAlign.center,
      ),
    ],
  );
}