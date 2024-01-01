import 'package:flutter/material.dart';
import 'package:flutter_demo/features/all_bank/presentation/bank_list_view.dart';

void main() => runApp(const _App());

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: BankListView(),
        ),
      ),
    );
  }
}
