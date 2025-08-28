import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast_io.dart';

import 'app_module.config.dart';

String databasePath = "";

@InjectableInit(initializerName: 'init', preferRelativeImports: true, asExtension: true)
Future<void> configureDependencies({String? env, EnvironmentFilter? environmentFilter}) async =>
    GetIt.instance.init(environmentFilter: environmentFilter, environment: env);

@module
abstract class AppModule {
  @lazySingleton
  @preResolve
  Future<Database> get database => databaseFactoryIo.openDatabase(databasePath);
}
