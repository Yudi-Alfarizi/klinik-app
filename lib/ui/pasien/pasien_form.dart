import 'package:flutter/material.dart';
import '../../model/pasien.dart';

class PasienForm extends StatefulWidget {
  final Pasien? pasien;
  PasienForm({super.key, this.pasien});

  @override
  State<PasienForm> createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaCtrl = TextEditingController();
  final _keluhanCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.pasien != null) {
      _namaCtrl.text = widget.pasien!.nama;
      _keluhanCtrl.text = widget.pasien!.keluhan;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pasien == null ? "Tambah Pasien" : "Ubah Pasien"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                controller: _namaCtrl,
                decoration: const InputDecoration(labelText: "Nama Pasien"),
              ),
              TextField(
                controller: _keluhanCtrl,
                decoration: const InputDecoration(labelText: "Keluhan"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Pasien pasien = Pasien(
                    nama: _namaCtrl.text,
                    keluhan: _keluhanCtrl.text,
                  );
                  Navigator.pop(context, pasien);
                },
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
