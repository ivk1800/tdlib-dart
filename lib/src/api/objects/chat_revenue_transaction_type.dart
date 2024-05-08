import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of transaction for revenue earned from sponsored messages
/// in a chat
@immutable
abstract class ChatRevenueTransactionType extends TdObject {
  const ChatRevenueTransactionType();

  static const String constructor = 'chatRevenueTransactionType';

  /// Inherited by:
  /// [ChatRevenueTransactionTypeEarnings]
  /// [ChatRevenueTransactionTypeRefund]
  /// [ChatRevenueTransactionTypeWithdrawal]
  static ChatRevenueTransactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatRevenueTransactionTypeEarnings.constructor:
        return ChatRevenueTransactionTypeEarnings.fromJson(json);
      case ChatRevenueTransactionTypeRefund.constructor:
        return ChatRevenueTransactionTypeRefund.fromJson(json);
      case ChatRevenueTransactionTypeWithdrawal.constructor:
        return ChatRevenueTransactionTypeWithdrawal.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
