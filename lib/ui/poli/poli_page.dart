import 'package:flutter/material.dart';
import '../../model/poli.dart';
import '../../service/poli_service.dart';
import 'poli_form.dart';
import 'poli_update_form.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  final PoliService _service = PoliService();
  late Future<List<Poli>> _listPoli;

  @override
  void initState() {
    super.initState();
    _listPoli = _service.getAllPoli();
  }

  void _refresh() {
    setState(() {
      _listPoli = _service.getAllPoli();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Poli')),
      body: FutureBuilder<List<Poli>>(
        future: _listPoli,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Belum ada data Poli'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final poli = snapshot.data![index];
                return ListTile(
                  title: Text(poli.namaPoli),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () async {
                          final updated = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PoliUpdateForm(poli: poli),
                            ),
                          );
                          if (updated != null && updated is Poli) {
                            await _service.updatePoli(poli.id!, updated);
                            _refresh();
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () async {
                          await _service.deletePoli(poli.id!);
                          _refresh();
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newPoli = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PoliForm()),
          );
          if (newPoli != null && newPoli is Poli) {
            await _service.createPoli(newPoli);
            _refresh();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
