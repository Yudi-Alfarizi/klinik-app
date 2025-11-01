import 'package:flutter/material.dart';
import '../../model/pegawai.dart';
import 'pegawai_update_form.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Pegawai")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama : ${widget.pegawai.nama}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Jabatan : ${widget.pegawai.jabatan}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updatedPegawai = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PegawaiUpdateForm(pegawai: widget.pegawai),
                  ),
                );
                if (updatedPegawai != null && updatedPegawai is Pegawai) {
                  setState(() {
                    widget.pegawai.nama = updatedPegawai.nama;
                    widget.pegawai.jabatan = updatedPegawai.jabatan;
                  });
                }
              },
              child: const Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }
}
