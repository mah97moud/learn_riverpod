

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// final moviceSearchTextProvider = StateProvider<String>((ref) {
//   return '';
// });
part 'movies_search_bar.g.dart';

@riverpod
class MovieSearchText extends _$MovieSearchText {
  @override 
  String build() => '';
  

  set searchText(String text) {
    state = text;
  }
}

class MoviesSearchBar extends ConsumerStatefulWidget {
  const MoviesSearchBar({
    super.key,
  });

  @override
  ConsumerState<MoviesSearchBar> createState() => _MoviesSearchBarState();
}

class _MoviesSearchBarState extends ConsumerState<MoviesSearchBar> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final searchText = ref.watch(movieSearchTextProvider);
    print('Searching for $searchText');
    return SizedBox(
      height: 70,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 32.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Center(
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: _controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        hintText: 'Search movies',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        
                      ),
                      onEditingComplete: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onChanged: (text) {
                        ref.read(movieSearchTextProvider.notifier).searchText = text;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
