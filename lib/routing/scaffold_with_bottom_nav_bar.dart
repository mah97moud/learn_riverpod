import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_riverpod/localization/string_hardcoded.dart';

import 'app_router.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  
  int _selectedIndex = 0;

  void _tap(BuildContext context, int index){
    if(index == _selectedIndex){
      return;
    }
    setState(() {
      _selectedIndex = index;
    });

    if(index == 0){
      context.goNamed(AppRoute.movies.name);
    } else if (index == 1) {
      context.goNamed(AppRoute.favorites.name);
    }
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // TODO: figure out theming
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        items: [
          // products
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Search'.hardcoded,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: 'Favorites'.hardcoded,
          ),
        ],
        onTap: (index) => _tap(context, index),
      ),
    );
  }
}
