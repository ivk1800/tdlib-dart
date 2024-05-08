import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a refund for failed withdrawal of earnings
@immutable
class ChatRevenueTransactionTypeRefund extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeRefund({
    required this.refundDate,
    required this.provider,
  });

  /// [refundDate] Point in time (Unix timestamp) when the transaction was
  /// refunded
  final int refundDate;

  /// [provider] Name of the payment provider
  final String provider;

  static const String constructor = 'chatRevenueTransactionTypeRefund';

  static ChatRevenueTransactionTypeRefund? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeRefund(
      refundDate: json['refund_date'] as int,
      provider: json['provider'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'refund_date': refundDate,
        'provider': provider,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
