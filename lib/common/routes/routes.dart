import 'package:go_router/go_router.dart';

import '../../screens/landing_screen.dart';

final goRoutes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingScreen(),
    ),  
  ],
);
