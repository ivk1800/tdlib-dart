import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is a member of the chat, without any additional privileges or
/// restrictions
@immutable
class ChatMemberStatusMember extends ChatMemberStatus {
  const ChatMemberStatusMember({
    required this.memberUntilDate,
  });

  /// [memberUntilDate] Point in time (Unix timestamp) when the user will be
  /// removed from the chat because of the expired subscription; 0 if never.
  /// Ignored in setChatMemberStatus
  final int memberUntilDate;

  static const String constructor = 'chatMemberStatusMember';

  static ChatMemberStatusMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusMember(
      memberUntilDate: json['member_until_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_until_date': memberUntilDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
