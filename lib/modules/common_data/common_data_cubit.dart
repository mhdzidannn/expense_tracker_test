import 'package:expense_tracker_test/database/modules/common_controller.dart';
import 'package:expense_tracker_test/modules/common_data/state/common_data_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CommonDataCubit extends Cubit<CommonDataState> {
  final CommonController commonController;

  CommonDataCubit({required this.commonController}) : super(CommonDataState(expensesCategories: []));

  Future<void> getExpenseCategories() async {
    final categories = await commonController.getExpensesCategories();
    emit(state.copyWith(expensesCategories: categories));
  }
}
