import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_module.config.dart';

@InjectableInit(initializerName: 'init', preferRelativeImports: true, asExtension: true)
Future<void> configureDependencies({String? env, EnvironmentFilter? environmentFilter}) async =>
    GetIt.instance.init(environmentFilter: environmentFilter, environment: env);
