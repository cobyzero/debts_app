import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/dependencies/injector.dart';
import 'package:debts_app/core/routes/router.dart';
import 'package:debts_app/src/application/services/database_service.dart';
import 'package:debts_app/src/infraestructure/blocs/contact_bloc/contact_bloc.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  await getIt.get<DatabaseService>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (p0) => ContactBloc()..add(GetContactsEvent()),
        ),
      ],
      child: Sizer(
        builder: (p0, p1, p2) {
          return MaterialApp.router(
            title: 'Material App',
            routerConfig: router,
          );
        },
      ),
    );
  }
}
