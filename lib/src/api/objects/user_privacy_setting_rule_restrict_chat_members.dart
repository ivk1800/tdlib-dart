import '../tdapi.dart';

/// A rule to restrict all members of specified basic groups and supergroups
/// from doing something
class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictChatMembers({required this.chatIds});

  /// [chatIds] The chat identifiers, total number of chats in all rules must
  /// not exceed 20
  final List<int> chatIds;

  static const String CONSTRUCTOR = 'userPrivacySettingRuleRestrictChatMembers';

  static UserPrivacySettingRuleRestrictChatMembers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleRestrictChatMembers(
        chatIds: List<int>.from(
            (json['chat_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_ids': chatIds.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
