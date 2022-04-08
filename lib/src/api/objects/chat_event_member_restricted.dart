import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat member was restricted/unrestricted or banned/unbanned, or the list
/// of their restrictions has changed
@immutable
class ChatEventMemberRestricted extends ChatEventAction {
  const ChatEventMemberRestricted({
    required this.memberId,
    required this.oldStatus,
    required this.newStatus,
  });

  /// [memberId] Affected chat member identifier
  final MessageSender memberId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  static const String constructor = 'chatEventMemberRestricted';

  static ChatEventMemberRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberRestricted(
      memberId: MessageSender.fromJson(json['member_id'])!,
      oldStatus: ChatMemberStatus.fromJson(json['old_status'])!,
      newStatus: ChatMemberStatus.fromJson(json['new_status'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_id': memberId.toJson(),
        'old_status': oldStatus.toJson(),
        'new_status': newStatus.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
