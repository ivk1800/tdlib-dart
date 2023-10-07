import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must subscribe to Telegram Premium to be able to boost chats
@immutable
class CanBoostChatResultPremiumNeeded extends CanBoostChatResult {
  const CanBoostChatResultPremiumNeeded();

  static const String constructor = 'canBoostChatResultPremiumNeeded';

  static CanBoostChatResultPremiumNeeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanBoostChatResultPremiumNeeded();
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
