import 'package:expense_tracker_test/database/sync/expenses_database.dart';
import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';
import 'package:ulid/ulid.dart';

@injectable
class ExpensesController {
  final ExpensesDatabase database;

  ExpensesController({required this.database});

  Future<bool> sync() async {
    final status = await database.sync();
    return status;
  }

  Future<ExpenseDto> addExpense(ExpenseDto expense) async {
    final withMeta = expense.copyWith(
      id: Ulid().toCanonical(),
      createdAt: DateTime.now().toUtc(),
      updatedAt: DateTime.now().toUtc(),
    );
    print(withMeta.toJson());
    await database.insert(data: withMeta.toJson());
    return withMeta;
  }

  Future<ExpenseDto?> updateExpense(ExpenseDto expense) async {
    final fromDb = await database.findExactOne(Finder(filter: Filter.equals('id', expense.id)));
    if (fromDb == null) return null;

    final updated = expense.copyWith(updatedAt: DateTime.now().toUtc());
    await database.update(updated.toJson(), Finder(filter: Filter.equals('id', expense.id)));
    return updated;
  }

  //make sure date is selected date
  Future<List<ExpenseDto>> getAllExpenses({
    bool sortByDate = true,
    bool sortByAmount = true,
    String? categoryName,
  }) async {
    final sortOrders = <SortOrder>[];

    if (sortByDate) {
      sortOrders.add(SortOrder('selectedDate', false));
    }
    if (sortByAmount) {
      sortOrders.add(SortOrder('amount', false));
    }

    Filter? filter;
    if (categoryName != null) {
      filter = Filter.equals('selectedExpense.name', categoryName);
    }

    final finder = Finder(filter: filter, sortOrders: sortOrders);
    final result = await database.find(finder: finder);

    final expenses = <String, ExpenseDto>{};
    for (final record in result) {
      final expense = ExpenseDto.fromJson(record.value as Map<String, dynamic>);
      expenses[expense.id] = expense;
    }
    return expenses.values.toList();
  }

  Future<ExpenseDto?> getExpense(String id) async {
    final expense = await database.findExactOne(Finder(filter: Filter.equals('id', id)));
    if (expense == null) return null;
    return ExpenseDto.fromJson(expense.value);
  }

  Future<bool> deleteExpense(String id) async {
    await database.delete(Finder(filter: Filter.equals('id', id)));
    return true;
  }
}
