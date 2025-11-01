import 'package:flutter/material.dart';
import '../../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';
import '../../widget/sidebar.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PegawaiForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
            pegawai: Pegawai(nama: "Andi", jabatan: "Administrasi"),
          ),
          PegawaiItem(
            pegawai: Pegawai(nama: "Siti", jabatan: "Kasir"),
          ),
          PegawaiItem(
            pegawai: Pegawai(nama: "Budi", jabatan: "Farmasi"),
          ),
        ],
      ),
    );
  }
}
