import 'package:flutter/material.dart';
import '../../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';
import '../../widget/sidebar.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PasienForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
            pasien: Pasien(nama: "Rina", keluhan: "Demam"),
          ),
          PasienItem(
            pasien: Pasien(nama: "Bima", keluhan: "Batuk"),
          ),
          PasienItem(
            pasien: Pasien(nama: "Tina", keluhan: "Sakit gigi"),
          ),
        ],
      ),
    );
  }
}
