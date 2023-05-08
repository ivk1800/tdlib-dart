import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of chat folder invite links
@immutable
class ChatFolderInviteLinks extends TdObject {
  const ChatFolderInviteLinks({
    required this.inviteLinks,
  });

  /// [inviteLinks] List of the invite links
  final List<ChatFolderInviteLink> inviteLinks;

  static const String constructor = 'chatFolderInviteLinks';

  static ChatFolderInviteLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInviteLinks(
      inviteLinks: List<ChatFolderInviteLink>.from(
          ((json['invite_links'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatFolderInviteLink.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_links': inviteLinks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
