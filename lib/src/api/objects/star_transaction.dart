import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a transaction changing the amount of owned Telegram Stars
@immutable
class StarTransaction extends TdObject {
  const StarTransaction({
    required this.id,
    required this.starCount,
    required this.isRefund,
    required this.date,
    required this.partner,
  });

  /// [id] Unique identifier of the transaction
  final String id;

  /// [starCount] The amount of added owned Telegram Stars; negative for
  /// outgoing transactions
  final int starCount;

  /// [isRefund] True, if the transaction is a refund of a previous transaction
  final bool isRefund;

  /// [date] Point in time (Unix timestamp) when the transaction was completed
  final int date;

  /// [partner] Source of the incoming transaction, or its recipient for
  /// outgoing transactions
  final StarTransactionPartner partner;

  static const String constructor = 'starTransaction';

  static StarTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransaction(
      id: json['id'] as String,
      starCount: json['star_count'] as int,
      isRefund: json['is_refund'] as bool,
      date: json['date'] as int,
      partner: StarTransactionPartner.fromJson(
          json['partner'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'star_count': starCount,
        'is_refund': isRefund,
        'date': date,
        'partner': partner.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
