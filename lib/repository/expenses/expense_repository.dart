import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:expense_tracker_test/repository/result.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class ExpenseRepository {
  Future<RepoResult> fetchExpenseCategories() async {
    try {
      final response = await http
          .get(Uri.parse('https://media.halogen.my/experiment/mobile/expenseCategories.json'))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        try {
          final decoded = jsonDecode(response.body) as Map<String, dynamic>;
          final list = (decoded['expenseCategories'] as List<dynamic>)
              .map((e) => ExpenseCategoriesDto.fromJson(e as Map<String, dynamic>))
              .toList();

          return RepoSuccess(list);
        } on FormatException {
          return const RepoFailure("Invalid JSON format");
        }
      } else {
        return RepoFailure("Server error: ${response.statusCode} ${response.reasonPhrase}");
      }
    } on SocketException {
      return const RepoFailure("No internet connection");
    } on TimeoutException {
      return const RepoFailure("Request timed out");
    } catch (e) {
      return RepoFailure("Unexpected error: $e");
    }
  }
}
