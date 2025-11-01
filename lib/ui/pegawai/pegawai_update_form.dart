import 'package:flutter/material.dart';
import '../../model/pegawai.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({super.key, required this.pegawai});

  @override
  State<PegawaiUpdateForm> createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaCtrl = TextEditingController();
  final _jabatanCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _namaCtrl.text = widget.pegawai.nama;
    _jabatanCtrl.text = widget.pegawai.jabatan;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                controller: _namaCtrl,
                decoration: const InputDecoration(labelText: "Nama Pegawai"),
              ),
              TextField(
                controller: _jabatanCtrl,
                decoration: const InputDecoration(labelText: "Jabatan"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Pegawai pegawai = Pegawai(
                    nama: _namaCtrl.text,
                    jabatan: _jabatanCtrl.text,
                  );
                  Navigator.pop(context, pegawai);
                },
                child: const Text("Simpan Perubahan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
