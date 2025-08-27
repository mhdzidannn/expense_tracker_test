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

import 'components/notification/notification_cubit.dart' as _i923;
import 'components/theme.dart' as _i321;
import 'modules/common_data/common_data_cubit.dart' as _i975;
import 'repository/expenses/expense_repository.dart' as _i385;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i321.ThemeCubit>(() => _i321.ThemeCubit());
    gh.lazySingleton<_i923.NotificationCubit>(() => _i923.NotificationCubit());
    gh.lazySingleton<_i385.ExpenseRepository>(() => _i385.ExpenseRepository());
    gh.lazySingleton<_i975.CommonDataCubit>(
      () => _i975.CommonDataCubit(expenseRepo: gh<_i385.ExpenseRepository>()),
    );
    return this;
  }
}
