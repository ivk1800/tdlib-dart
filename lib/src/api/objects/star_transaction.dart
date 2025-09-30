import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a transaction changing the amount of owned Telegram Stars
@immutable
class StarTransaction extends TdObject {
  const StarTransaction({
    required this.id,
    required this.starAmount,
    required this.isRefund,
    required this.date,
    required this.type,
  });

  /// [id] Unique identifier of the transaction
  final String id;

  /// [starAmount] The amount of added owned Telegram Stars; negative for
  /// outgoing transactions
  final StarAmount starAmount;

  /// [isRefund] True, if the transaction is a refund of a previous transaction
  final bool isRefund;

  /// [date] Point in time (Unix timestamp) when the transaction was completed
  final int date;

  /// [type] Type of the transaction
  final StarTransactionType type;

  static const String constructor = 'starTransaction';

  static StarTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransaction(
      id: json['id'] as String,
      starAmount: StarAmount.fromJson(
        json['star_amount'] as Map<String, dynamic>?,
      )!,
      isRefund: json['is_refund'] as bool,
      date: json['date'] as int,
      type: StarTransactionType.fromJson(
        json['type'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'star_amount': starAmount.toJson(),
    'is_refund': isRefund,
    'date': date,
    'type': type.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
