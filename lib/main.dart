import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/birthdays_provider.dart';
import 'package:learn_riverpod/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'main.g.dart';

@riverpod
String label(LabelRef ref) => 'Hello world';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

  void increment() => state++;
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final birthdays = ref.watch(birthdaysProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: birthdays.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final birthday = data.elementAt(index);
              return ListTile(
                title: Text(birthday.employeeName ?? ''),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text('$error'),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ref.read(counterProvider.notifier).increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// class CustomSearchDelegate extends SearchDelegate {
//   List<String> fruits = [
//     "apple",
//     "banana",
//     "orange",
//     "red",
//     "yellow",
//   ];
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: const Icon(
//           Icons.clear,
//         ),
//       ),
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, null);
//       },
//       icon: const Icon(
//         Icons.arrow_back,
//       ),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in fruits) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(query);
//       }
//     }

//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         final fruit = matchQuery.elementAt(index);
//         return ListTile(
//           title: Text(fruit),
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in fruits) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }

//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         final fruit = matchQuery.elementAt(index);
//         return ListTile(
//           title: Text(fruit),
//         );
//       },
//     );
//   }
// }
