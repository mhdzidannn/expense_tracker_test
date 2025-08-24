import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:expense_tracker_test/network/expenses/dto/expense_categories_dto.dart';
import 'package:expense_tracker_test/network/result.dart';
import 'package:http/http.dart' as http;

class ExpenseRepository {
  Future<RepoResult<List<ExpenseCategoriesDto>>> fetchExpenseCategories() async {
    try {
      final response = await http
          .get(Uri.parse('https://media.halogen.my/experiment/mobile/expenseCategories.json'))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        try {
          final data = jsonDecode(response.body) as List<ExpenseCategoriesDto>;
          return RepoSuccess(data);
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
