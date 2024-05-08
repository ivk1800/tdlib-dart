import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of a chat revenue withdrawal
@immutable
abstract class ChatRevenueWithdrawalState extends TdObject {
  const ChatRevenueWithdrawalState();

  static const String constructor = 'chatRevenueWithdrawalState';

  /// Inherited by:
  /// [ChatRevenueWithdrawalStateCompleted]
  /// [ChatRevenueWithdrawalStateFailed]
  /// [ChatRevenueWithdrawalStatePending]
  static ChatRevenueWithdrawalState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatRevenueWithdrawalStateCompleted.constructor:
        return ChatRevenueWithdrawalStateCompleted.fromJson(json);
      case ChatRevenueWithdrawalStateFailed.constructor:
        return ChatRevenueWithdrawalStateFailed.fromJson(json);
      case ChatRevenueWithdrawalStatePending.constructor:
        return ChatRevenueWithdrawalStatePending.fromJson(json);
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
