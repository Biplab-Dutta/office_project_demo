import 'package:flutter/material.dart';
import 'package:flutter_demo/features/all_bank/application/bank_view_model.dart';
import 'package:flutter_demo/features/all_bank/models/bank_model.dart';
import 'package:flutter_demo/utils.dart';

class BankListView extends StatefulWidget {
  const BankListView({super.key});

  @override
  State<BankListView> createState() => _BankListViewState();
}

class _BankListViewState extends State<BankListView> {
  late final Future<BankModel?> banks;

  @override
  void initState() {
    super.initState();
    final bankViewModel = BankViewModel();
    banks = bankViewModel.getBanks();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BankModel?>(
      future: banks,
      builder: (context, snapshot) {
        final data = snapshot.data;
        final records = data?.records;

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (snapshot.hasError) return const Center(child: Text('Oh no!!!'));

        if (snapshot.hasData && records.isNotNullAndNotEmpty) {
          return LayoutBuilder(
            builder: (context, constraint) {
              if (constraint.maxWidth > 600) {
                return GridView.count(
                  padding: const EdgeInsets.all(16),
                  crossAxisCount: 5,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 8,
                  children: records!.map((record) => Card(child: BankItem(record: record))).toList(),
                );
              }
              return ListView.separated(
                itemBuilder: (_, index) {
                  final record = records[index];
                  return BankItem(record: record);
                },
                separatorBuilder: (_, __) => const Divider(),
                itemCount: records!.length,
              );
            },
          );
        }

        return const Center(
          child: Text('There are no any banks to be fetched!!!'),
        );
      },
    );
  }
}

class BankItem extends StatelessWidget {
  const BankItem({super.key, required this.record});

  final BankRecordModel record;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        record.imageUrl ?? '',
        errorBuilder: (_, __, ___) => const Icon(Icons.error, size: 55),
      ),
      title: Text(
        record.name ?? '',
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
      subtitle: Text(record.shortName ?? ''),
    );
  }
}
