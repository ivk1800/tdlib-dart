import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a chat folder invite link
@immutable
class ChatFolderInviteLink extends TdObject {
  const ChatFolderInviteLink({
    required this.inviteLink,
    required this.name,
    required this.chatIds,
  });

  /// [inviteLink] The chat folder invite link
  final String inviteLink;

  /// [name] Name of the link
  final String name;

  /// [chatIds] Identifiers of chats, included in the link
  final List<int> chatIds;

  static const String constructor = 'chatFolderInviteLink';

  static ChatFolderInviteLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInviteLink(
      inviteLink: json['invite_link'] as String,
      name: json['name'] as String,
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
        'invite_link': inviteLink,
        'name': name,
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
