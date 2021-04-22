import '../tdapi.dart';

/// A chat member was restricted/unrestricted or banned/unbanned, or the list
/// of their restrictions has changed
class ChatEventMemberRestricted extends ChatEventAction {
  ChatEventMemberRestricted(
      {required this.userId, required this.oldStatus, required this.newStatus});

  /// [userId] Chat member user identifier
  final int userId;

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
        userId: json['user_id'],
        oldStatus: ChatMemberStatus.fromJson(json['old_status'])!,
        newStatus: ChatMemberStatus.fromJson(json['new_status'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'old_status': this.oldStatus.toJson(),
        'new_status': this.newStatus.toJson(),
        '@type': CONSTRUCTOR
      };
}
