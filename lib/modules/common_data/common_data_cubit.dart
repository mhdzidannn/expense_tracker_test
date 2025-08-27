import 'package:expense_tracker_test/modules/common_data/state/common_data_state.dart';
import 'package:expense_tracker_test/repository/expenses/expense_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CommonDataCubit extends Cubit<CommonDataState> {
  final ExpenseRepository expenseRepo;

  CommonDataCubit({required this.expenseRepo}) : super(CommonDataState(expenses: []));

  Future<void> getExpenseCategories() async {
    final categories = await expenseRepo.fetchExpenseCategories();

    // after getting from endpoint update to local db as well

    emit(state.copyWith());
  }
}
