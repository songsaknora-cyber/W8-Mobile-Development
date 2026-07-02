import '../models/expense.dart';

class ExpenseRepository {
  List<Expense> expensesList = [
    Expense(amount: 45, title: "fake"),
    Expense(amount: 19.99, title: "Flutter Course"),
    Expense(amount: 15.69, title: "Cinema"),
    Expense(amount: 22.69, title: "Guitar"),
  ];

  Future<List<Expense>> fetchExpense() {
    // Simulate 5 seconds before returnning the success fetch
    return Future.delayed(Duration(seconds: 5), () {
      return expensesList;
    });
  }
}

class ExpenseException implements Exception {
  final String message;
  ExpenseException(this.message);

  @override
  String toString() => message;
}

final ExpenseRepository expenseRepository =
    ExpenseRepository(); // global access for now
