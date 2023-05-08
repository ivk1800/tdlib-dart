import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of pinned and always included, or always excluded chats
/// in a chat folder
@immutable
class PremiumLimitTypeChatFolderChosenChatCount extends PremiumLimitType {
  const PremiumLimitTypeChatFolderChosenChatCount();

  static const String constructor = 'premiumLimitTypeChatFolderChosenChatCount';

  static PremiumLimitTypeChatFolderChosenChatCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFolderChosenChatCount();
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
