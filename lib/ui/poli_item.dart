import 'package:flutter/material.dart';
import 'package:tugas_data_klinik/model/data.dart';
import 'package:tugas_data_klinik/ui/detail_poli.dart';


class PoliItem extends StatelessWidget {
  const PoliItem({super.key, required this.poli});
  final Poli poli;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(title: Text("${poli.namaPoli}"),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPoli(poli: poli)));
      }
    );
  }
}