import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat invite links
@immutable
class ChatInviteLinks extends TdObject {
  const ChatInviteLinks({
    required this.totalCount,
    required this.inviteLinks,
  });

  /// [totalCount] Approximate total number of chat invite links found
  final int totalCount;

  /// [inviteLinks] List of invite links
  final List<ChatInviteLink> inviteLinks;

  static const String constructor = 'chatInviteLinks';

  static ChatInviteLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinks(
      totalCount: json['total_count'] as int,
      inviteLinks: List<ChatInviteLink>.from(
          ((json['invite_links'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatInviteLink.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'invite_links': inviteLinks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
