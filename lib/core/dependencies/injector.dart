import 'package:debts_app/src/application/services/database_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<DatabaseService>(DatabaseService());
}
