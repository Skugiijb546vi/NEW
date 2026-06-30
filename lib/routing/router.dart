import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sebartv/ui/main_screen.dart';
import 'package:sebartv/ui/home/home_screen.dart';
import 'package:sebartv/ui/search/search_screen.dart';
import 'package:sebartv/ui/favorites/favorites_screen.dart';
import 'package:sebartv/ui/detail/detail_screen.dart';
import 'package:sebartv/ui/player/video_player_screen.dart';
import 'package:sebartv/ui/royal/royal_room_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return MainScreen(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/series',
            builder: (context, state) => const Scaffold(body: Center(child: Text('زنجیرەکان'))),
          ),
          GoRoute(
            path: '/search',
            builder: (context, state) => const SearchScreen(),
          ),
          GoRoute(
            path: '/favorites',
            builder: (context, state) => const FavoritesScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const Scaffold(body: Center(child: Text('ڕێکخستن'))),
          ),
        ],
      ),
      GoRoute(
        path: '/detail/:section/:id',
        builder: (context, state) {
          final section = state.pathParameters['section']!;
          final id = int.parse(state.pathParameters['id']!);
          return DetailScreen(movieId: id, section: section);
        },
      ),
      GoRoute(
        path: '/player/:section/:id',
        builder: (context, state) {
          final section = state.pathParameters['section']!;
          final id = int.parse(state.pathParameters['id']!);
          return VideoPlayerScreen(movieId: id, section: section);
        },
      ),
      GoRoute(
        path: '/royal_room/:roomId/:movieId',
        builder: (context, state) {
          final roomId = state.pathParameters['roomId']!;
          final movieId = int.parse(state.pathParameters['movieId']!);
          final isAdmin = state.uri.queryParameters['isAdmin'] == 'true';
          return RoyalRoomScreen(roomId: roomId, movieId: movieId, isAdmin: isAdmin);
        },
      ),
    ],
  );
});
