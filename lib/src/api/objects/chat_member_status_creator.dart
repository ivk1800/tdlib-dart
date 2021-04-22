import '../tdapi.dart';

/// The user is the owner of a chat and has all the administrator privileges
class ChatMemberStatusCreator extends ChatMemberStatus {
  ChatMemberStatusCreator(
      {required this.customTitle,
      required this.isAnonymous,
      required this.isMember});

  /// [customTitle] A custom title of the owner; 0-16 characters without emojis;
  /// applicable to supergroups only
  final String customTitle;

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and
  /// sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  static const String CONSTRUCTOR = 'chatMemberStatusCreator';

  static ChatMemberStatusCreator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusCreator(
        customTitle: json['custom_title'],
        isAnonymous: json['is_anonymous'],
        isMember: json['is_member']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'custom_title': this.customTitle,
        'is_anonymous': this.isAnonymous,
        'is_member': this.isMember,
        '@type': CONSTRUCTOR
      };
}
