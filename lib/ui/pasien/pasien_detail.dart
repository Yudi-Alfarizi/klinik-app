import 'package:flutter/material.dart';
import '../../model/pasien.dart';
import 'pasien_update_form.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Pasien")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama : ${widget.pasien.nama}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Keluhan : ${widget.pasien.keluhan}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updatedPasien = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PasienUpdateForm(pasien: widget.pasien),
                  ),
                );
                if (updatedPasien != null && updatedPasien is Pasien) {
                  setState(() {
                    widget.pasien.nama = updatedPasien.nama;
                    widget.pasien.keluhan = updatedPasien.keluhan;
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
