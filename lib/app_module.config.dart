// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sembast/sembast_io.dart' as _i156;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'app_module.dart' as _i460;
import 'components/theme.dart' as _i321;
import 'database/modules/common_controller.dart' as _i500;
import 'database/sync/common_database.dart' as _i446;
import 'database/sync/expenses_database.dart' as _i446;
import 'modules/expenses/expenses_cubit.dart' as _i737;
import 'modules/settings/settings_cubit.dart' as _i559;
import 'repository/expenses/expense_repository.dart' as _i385;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i385.ExpenseRepository>(() => _i385.ExpenseRepository());
    await gh.lazySingletonAsync<_i156.Database>(
      () => appModule.database,
      preResolve: true,
    );
    gh.lazySingleton<_i446.ExpensesDatabase>(() => _i446.ExpensesDatabase());
    gh.lazySingleton<_i321.ThemeCubit>(() => _i321.ThemeCubit());
    gh.lazySingleton<_i446.CommonDatabase>(
      () => _i446.CommonDatabase(gh<_i385.ExpenseRepository>()),
    );
    gh.factory<_i500.CommonController>(
      () => _i500.CommonController(database: gh<_i446.CommonDatabase>()),
    );
    gh.lazySingleton<_i559.SettingsCubit>(
      () => _i559.SettingsCubit(
        commonController: gh<_i500.CommonController>(),
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i737.ExpensesCubit>(
      () => _i737.ExpensesCubit(
        commonController: gh<_i500.CommonController>(),
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i460.AppModule {}
