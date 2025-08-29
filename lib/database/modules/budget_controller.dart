import 'package:expense_tracker_test/database/sync/budget_database.dart';
import 'package:expense_tracker_test/modules/settings/dto/monthly_budget_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';
import 'package:ulid/ulid.dart';

@injectable
class BudgetController {
  final BudgetDatabase database;

  BudgetController({required this.database});

  Future<bool> sync() async {
    final status = await database.sync();
    return status;
  }

  Future<MonthlyBudgetDto> update(MonthlyBudgetDto budget) async {
    final find = await getSpecificBudget(month: budget.month, year: budget.year);

    if (find == null) {
      final withMeta = budget.copyWith(
        id: Ulid().toCanonical(),
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
      );
      await database.insert(data: withMeta.toJson());
      return withMeta;
    } else {
      final withMeta = budget.copyWith(updatedAt: DateTime.now().toUtc());
      await database.update(withMeta.toJson());
      return withMeta;
    }
  }

  Future<List<MonthlyBudgetDto>> getAllBudget() async {
    final sortOrders = <SortOrder>[];

    sortOrders.add(SortOrder('month', false));
    sortOrders.add(SortOrder('year', false));

    final finder = Finder(sortOrders: sortOrders);
    final result = await database.find(finder: finder);

    final monthlyBudgetList = <String, MonthlyBudgetDto>{};
    for (final record in result) {
      final budget = MonthlyBudgetDto.fromJson(record.value as Map<String, dynamic>);
      monthlyBudgetList[budget.amount.toString()] = budget;
    }
    return monthlyBudgetList.values.toList();
  }

  Future<MonthlyBudgetDto?> getSpecificBudget({required int month, required int year}) async {
    final finder = Finder(filter: Filter.and([Filter.equals('month', month), Filter.equals('year', year)]));
    final expense = await database.findExactOne(finder);
    if (expense == null) return null;
    return MonthlyBudgetDto.fromJson(expense.value);
  }
}
