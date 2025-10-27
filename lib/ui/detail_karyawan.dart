import 'package:flutter/material.dart';
import 'package:tugas_data_klinik/model/data.dart';

class DetailKaryawan extends StatefulWidget {
  final Karyawan karyawan;
  const DetailKaryawan({super.key, required this.karyawan});

  @override
  State<DetailKaryawan> createState() => _DetailKaryawanState();
}

class _DetailKaryawanState extends State<DetailKaryawan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(title: const Text('Detail Karyawan')),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 350,
          margin: const EdgeInsets.only(top: 20),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Detail Karyawan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Divider(height: 30, thickness: 2),
                  SizedBox(height: 8),
                  Text(
                    "Nama Karyawan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.karyawan.nama, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                    "NIP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.karyawan.nip, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                    "Tanggal Lahir",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.karyawan.tanggalLahir, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text("No HP", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(widget.karyawan.noHp, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(widget.karyawan.email, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                        label: Text(
                          "Edit",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        label: Text(
                          "Hapus",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ),
      )
    );
  }
}