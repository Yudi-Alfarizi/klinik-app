import 'package:flutter/material.dart';
import 'package:tugas_data_klinik/model/data.dart';
import 'package:tugas_data_klinik/ui/detail_poli.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tugas_data_klinik/ui/poli_item.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Poli')),
      body: ListView(
        children: [
          _buildMenuCard(
            title: "Poli Anak",
            subtitle: "Lihat detail informasi poli anak",
            icon: FontAwesomeIcons.baby,
            color: Colors.blueAccent,
            onTap: () {
              PoliItem (poli: Poli(namaPoli: 'Poli Anak'));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPoli(poli: Poli(namaPoli: "Poli Anak")),
                ),
              );
            },
          ),
          _buildMenuCard(
            title: "Poli Kandungan",
            subtitle: "Lihat detail informasi poli kandungna",
            icon: FontAwesomeIcons.personPregnant,
            color: Colors.teal,
            onTap: () {
              Poli poliKandungan = Poli(namaPoli: "Poli Kandungan");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPoli(poli: poliKandungan),
                ),
              );
            },
          ),
          _buildMenuCard(
            title: "Poli Gigi",
            subtitle: "Lihat detail informasi poli gigi",
            icon: FontAwesomeIcons.tooth,
            color: Colors.blueAccent,
            onTap: () {
              Poli poliGigi = Poli(namaPoli: "Poli Gigi");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPoli(poli: poliGigi),
                ),
              );
            },
          ),
          _buildMenuCard(
            title: "Poli THT",
            subtitle: "Lihat detail informasi poli tht",
            icon: Icons.hearing,
            color: Colors.teal,
            onTap: () {
              Poli poliTHT = Poli(namaPoli: "Poli THT");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPoli(poli: poliTHT),
                ),
              );
            },
          ),
        ],
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
                  color: color.withValues(alpha: 0.1),
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
