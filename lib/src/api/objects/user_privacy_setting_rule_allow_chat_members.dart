import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to allow all members of certain specified basic groups and
/// supergroups to doing something
@immutable
class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowChatMembers({
    required this.chatIds,
  });

  /// [chatIds] The chat identifiers, total number of chats in all rules must
  /// not exceed 20
  final List<int> chatIds;

  static const String constructor = 'userPrivacySettingRuleAllowChatMembers';

  static UserPrivacySettingRuleAllowChatMembers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleAllowChatMembers(
      chatIds: List<int>.from(
          ((json['chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
