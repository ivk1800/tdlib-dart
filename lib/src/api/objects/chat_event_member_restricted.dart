import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat member was restricted/unrestricted or banned/unbanned, or the list
/// of their restrictions has changed
class ChatEventMemberRestricted extends ChatEventAction {
  ChatEventMemberRestricted(
      {required this.memberId,
      required this.oldStatus,
      required this.newStatus});

  /// [memberId] Affected chat member identifier
  final MessageSender memberId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  static const String CONSTRUCTOR = 'chatEventMemberRestricted';

  static ChatEventMemberRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberRestricted(
        memberId: MessageSender.fromJson(json['member_id'])!,
        oldStatus: ChatMemberStatus.fromJson(json['old_status'])!,
        newStatus: ChatMemberStatus.fromJson(json['new_status'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'member_id': this.memberId.toJson(),
        'old_status': this.oldStatus.toJson(),
        'new_status': this.newStatus.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
