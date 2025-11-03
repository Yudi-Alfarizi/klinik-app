import '../helpers/api_client.dart';
import '../model/poli.dart';

class PoliService {
  final ApiClient _apiClient = ApiClient(
    baseUrl: "https://69089e882d902d0651b116ff.mockapi.io",
  );

  Future<List<Poli>> getAllPoli() async {
    final data = await _apiClient.get('poli');
    return data.map<Poli>((json) => Poli.fromJson(json)).toList();
  }

  Future<Poli> createPoli(Poli poli) async {
    final data = await _apiClient.post('poli', poli.toJson());
    return Poli.fromJson(data);
  }

  Future<void> updatePoli(String id, Poli poli) async {
    await _apiClient.put('poli/$id', poli.toJson());
  }

  Future<void> deletePoli(String id) async {
    await _apiClient.delete('poli/$id');
  }
}
