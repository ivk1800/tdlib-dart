import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is the owner of the chat and has all the administrator privileges
@immutable
class ChatMemberStatusCreator extends ChatMemberStatus {
  const ChatMemberStatusCreator({
    required this.customTitle,
    required this.isAnonymous,
    required this.isMember,
  });

  /// [customTitle] A custom title of the owner; 0-16 characters without emojis;
  /// applicable to supergroups only
  final String customTitle;

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and
  /// sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  static const String constructor = 'chatMemberStatusCreator';

  static ChatMemberStatusCreator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusCreator(
      customTitle: json['custom_title'] as String,
      isAnonymous: json['is_anonymous'] as bool,
      isMember: json['is_member'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_title': customTitle,
        'is_anonymous': isAnonymous,
        'is_member': isMember,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
