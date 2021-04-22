import '../tdapi.dart';

/// A rule to allow all members of certain specified basic groups and
/// supergroups to doing something
class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowChatMembers({required this.chatIds});

  /// [chatIds] The chat identifiers, total number of chats in all rules must
  /// not exceed 20
  final List<int> chatIds;

  static const String CONSTRUCTOR = 'userPrivacySettingRuleAllowChatMembers';

  static UserPrivacySettingRuleAllowChatMembers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleAllowChatMembers(
        chatIds: List<int>.from(
            (json['chat_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_ids': chatIds.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
