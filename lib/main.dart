import 'package:flutter/material.dart';
import 'package:flutter_demo/features/all_bank/presentation/bank_list_view.dart';

void main() => runApp(const _App());

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: Center(
          child: BankListView(),
        ),
      ),
    );
  }
}
