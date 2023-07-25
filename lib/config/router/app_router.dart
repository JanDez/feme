import 'package:feme/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
        name: 'login_screen',
        path: '/',
        builder: (context, state) => const LoginScreen()),
    GoRoute(
        name: HomeScreen.name,
        path: '/home',
        builder: (context, state) => const HomeScreen()),
    GoRoute(
        name: ProfileScreen.name,
        path: '/profile',
        builder: (context, state) => const ProfileScreen()),
    GoRoute(
        name: ReportScreen.name,
        path: '/report',
        builder: (context, state) => const ReportScreen()),
    GoRoute(
        name: ClassroomScreen.name,
        path: '/classroom',
        builder: (context, state) => const ClassroomScreen()),
  ],
);
