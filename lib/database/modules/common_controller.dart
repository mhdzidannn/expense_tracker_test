import 'package:expense_tracker_test/database/sync/common_database.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

@injectable
class CommonController {
  final CommonDatabase database;

  CommonController({required this.database});

  Future<bool> sync() async {
    final status = await database.sync();
    return status;
  }

  Future<List<ExpenseCategoriesDto>> getExpensesCategories() async {
    final record = await database.find();
    if (record.isEmpty) {
      return [];
    }
    return record.values.map((e) {
      final data = e as Map<String, dynamic>;

      return ExpenseCategoriesDto.fromJson(data);
    }).toList();
  }
}
