import 'package:flutter/material.dart';
import 'package:tugas_data_klinik/model/data.dart';

class DetailPasien extends StatefulWidget {
  final Pasien pasien;
  const DetailPasien({super.key, required this.pasien});

  @override
  State<DetailPasien> createState() => _DetailPasienState();
}

class _DetailPasienState extends State<DetailPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(title: const Text('Detail Pasien')),
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
                    "Detail Pasien",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Divider(height: 30, thickness: 2),
                  SizedBox(height: 8),
                  Text(
                    "Nama Pasien",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.pasien.nama, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                    "Nomor RM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.pasien.nomorRm,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Tanggal Lahir",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.pasien.tanggalLahir,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text("No HP", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(widget.pasien.noHp, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text("Alamat", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    widget.pasien.alamat,
                    style: TextStyle(fontSize: 18),
                  ),
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
          ),
        ),
      ),
    );
  }
}
