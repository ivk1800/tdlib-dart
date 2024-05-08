import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat revenue transactions
@immutable
class ChatRevenueTransactions extends TdObject {
  const ChatRevenueTransactions({
    required this.totalCount,
    required this.transactions,
  });

  /// [totalCount] Total number of transactions
  final int totalCount;

  /// [transactions] List of transactions
  final List<ChatRevenueTransaction> transactions;

  static const String constructor = 'chatRevenueTransactions';

  static ChatRevenueTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactions(
      totalCount: json['total_count'] as int,
      transactions: List<ChatRevenueTransaction>.from(
          ((json['transactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatRevenueTransaction.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'transactions': transactions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
