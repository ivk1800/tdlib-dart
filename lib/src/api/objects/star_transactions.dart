import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of Telegram Star transactions
@immutable
class StarTransactions extends TdObject {
  const StarTransactions({
    required this.starCount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [starCount] The amount of owned Telegram Stars
  final int starCount;

  /// [transactions] List of transactions with Telegram Stars
  final List<StarTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'starTransactions';

  static StarTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactions(
      starCount: json['star_count'] as int,
      transactions: List<StarTransaction>.from(
          ((json['transactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StarTransaction.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'transactions': transactions.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
