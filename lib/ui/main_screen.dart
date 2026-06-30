import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  final Widget child;
  const MainScreen({super.key, required this.child});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/series')) return 1;
    if (location.startsWith('/search')) return 2;
    if (location.startsWith('/favorites')) return 3;
    if (location.startsWith('/settings')) return 4;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/series');
        break;
      case 2:
        context.go('/search');
        break;
      case 3:
        context.go('/favorites');
        break;
      case 4:
        context.go('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _currentIndex = _calculateSelectedIndex(context);

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => _onItemTapped(index, context),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'فیلمەکان'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'زنجیرەکان'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'گەڕان'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'دڵخوازەکان'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'ڕێکخستن'),
        ],
      ),
    );
  }
}
