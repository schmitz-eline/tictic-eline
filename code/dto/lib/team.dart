import 'my_transaction.dart';

class Team {
  final String id;
  final String title;
  final String? picturePath;
  final List<String>? tags;
  final DateTime startDate;
  final List<String> users;
  final List<MyTransaction>? myTransactions;

  const Team({
    required this.id,
    required this.title,
    this.picturePath,
    this.tags,
    this.myTransactions,
    required this.startDate,
    required this.users,
  });

  getSum() {
    double sum = 0;
    if (myTransactions != null) {
      for (var transaction in myTransactions!) {
        sum += transaction.amount;
      }
    }
    return sum;
  }
}
