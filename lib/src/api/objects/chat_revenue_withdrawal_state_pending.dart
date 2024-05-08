import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Withdrawal is pending
@immutable
class ChatRevenueWithdrawalStatePending extends ChatRevenueWithdrawalState {
  const ChatRevenueWithdrawalStatePending();

  static const String constructor = 'chatRevenueWithdrawalStatePending';

  static ChatRevenueWithdrawalStatePending? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatRevenueWithdrawalStatePending();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
