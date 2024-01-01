import 'dart:convert';

import 'package:flutter_demo/features/all_bank/models/bank_model.dart';
import 'package:http/http.dart' as http;

class BankService {
  BankService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  Future<BankModel?> getBanks() async {
    final uriString = Uri.parse('https://khalti.com/api/v5/bank/');
    final response = await _client.get(uriString);

    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body) as Map<String, dynamic>;
      return BankModel.fromJson(decodedResponse);
    }
    return null;
  }
}
