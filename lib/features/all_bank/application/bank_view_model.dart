import 'package:flutter_demo/features/all_bank/data/bank_service.dart';
import 'package:flutter_demo/features/all_bank/models/bank_model.dart';

class BankViewModel {
  BankViewModel({BankService? service}) : _service = service ?? BankService();

  final BankService _service;

  Future<BankModel?> getBanks() => _service.getBanks();
}
