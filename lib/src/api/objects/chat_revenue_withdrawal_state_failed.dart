import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Withdrawal has_failed
@immutable
class ChatRevenueWithdrawalStateFailed extends ChatRevenueWithdrawalState {
  const ChatRevenueWithdrawalStateFailed();

  static const String constructor = 'chatRevenueWithdrawalStateFailed';

  static ChatRevenueWithdrawalStateFailed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatRevenueWithdrawalStateFailed();
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
