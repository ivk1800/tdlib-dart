import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of pinned and always included, or always excluded chats
/// in a chat filter
@immutable
class PremiumLimitTypeChatFilterChosenChatCount extends PremiumLimitType {
  const PremiumLimitTypeChatFilterChosenChatCount();

  static const String constructor = 'premiumLimitTypeChatFilterChosenChatCount';

  static PremiumLimitTypeChatFilterChosenChatCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFilterChosenChatCount();
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
