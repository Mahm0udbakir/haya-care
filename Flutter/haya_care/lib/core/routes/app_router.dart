import 'package:go_router/go_router.dart';
import '../../feature/Auth/presentation/view/sign_in_view.dart';

class AppRouter {
  late final GoRouter router =
      GoRouter(initialLocation: '/signInView', routes: [
    GoRoute(
      path: '/signInView',
      builder: (context, state) => const SignInView(),
    ),
  ]);
}
