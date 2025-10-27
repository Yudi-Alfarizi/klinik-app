import 'package:flutter/material.dart';
import 'package:tugas_data_klinik/model/data.dart';
import 'package:tugas_data_klinik/ui/detail_karyawan.dart';
import 'package:tugas_data_klinik/ui/detail_pasien.dart';
import 'package:tugas_data_klinik/ui/poli_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        title: const Text(
          'Data Klinik',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildMenuCard(
              title: "Poli",
              subtitle: "Lihat detail informasi poli klinik",
              icon: Icons.medical_services_outlined,
              color: Colors.blueAccent,
              onTap: () {
                PoliPage();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildMenuCard(
              title: "Karyawan",
              subtitle: "Lihat detail informasi karyawan klinik",
              icon: Icons.person_outline,
              color: Colors.teal,
              onTap: () {
                Karyawan karyawan = Karyawan(
                  nama: "Jarot",
                  nip: "123456",
                  tanggalLahir: "1990-01-01",
                  noHp: "08123456789",
                  email: "Jarot@gmail.com",
                  password: "password",
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailKaryawan(karyawan: karyawan),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildMenuCard(
              title: "Pasien",
              subtitle: "Lihat detail informasi pasien klinik",
              icon: Icons.person_4_outlined,
              color: Colors.blueAccent,
              onTap: () {
                Pasien pasien = Pasien(
                  nama: "Budi",
                  nomorRm: "RM001",
                  tanggalLahir: "1995-05-05",
                  noHp: "08123456789",
                  alamat: "Jl. Slipi No. 10",
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPasien(pasien: pasien),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Card(
        elevation: 4,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: color.withValues( alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: Icon(icon, size: 32, color: color),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
