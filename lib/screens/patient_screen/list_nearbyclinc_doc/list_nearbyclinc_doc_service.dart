import 'dart:convert';
import 'dart:io';
import 'package:medico_project/screens/patient_screen/list_nearbyclinc_doc/list_nearbyclinc_doc_model.dart';
import 'package:http/http.dart' as http;

Future<List<NearbyClinicDoctor>> listofNearestClicDoc({
  required int userId,
}) async {
  try {
    final String url =
        'https://417sptdw-8002.inc1.devtunnels.ms/userapp/view_nearby_clinic_doctors/$userId/';
    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> decoded = jsonDecode(response.body);
      final List<dynamic> list = decoded['nearby_clinic_doctors'] ?? [];
      return list.map((e) => NearbyClinicDoctor.fromJson(e)).toList();
    } else {
      throw Exception("Failed to fetch doctors: ${response.statusCode}");
    }
  } on SocketException {
    throw Exception('Server Error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad Request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
