import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New chat members were added
@immutable
class MessageChatAddMembers extends MessageContent {
  const MessageChatAddMembers({
    required this.memberUserIds,
  });

  /// [memberUserIds] User identifiers of the new members
  final List<int> memberUserIds;

  static const String constructor = 'messageChatAddMembers';

  static MessageChatAddMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatAddMembers(
      memberUserIds: List<int>.from(
          ((json['member_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
