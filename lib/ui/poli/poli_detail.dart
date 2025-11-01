import 'package:flutter/material.dart';
import '../../model/poli.dart';
import 'poli_update_form.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Poli")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama Poli : ${widget.poli.namaPoli}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updatedPoli = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliUpdateForm(poli: widget.poli),
                  ),
                );
                if (updatedPoli != null && updatedPoli is Poli) {
                  setState(() {
                    widget.poli.namaPoli = updatedPoli.namaPoli;
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
