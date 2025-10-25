import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_provider/stream_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final provider = ref.watch(stockPriceProvider);
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('StreamProvider'))),
      body: Center(
        child: provider.when(
          data: (price) {
            return Text(
              '$price',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            );
          },
          error: (e, stack) => Text('Error'),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
