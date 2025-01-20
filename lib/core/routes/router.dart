import 'package:debts_app/core/routes/router_def.dart';
import 'package:debts_app/src/infraestructure/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RouterDef.home,
  routes: [
    GoRoute(
      path: RouterDef.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
