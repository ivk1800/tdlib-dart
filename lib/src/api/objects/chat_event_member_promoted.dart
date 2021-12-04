import '../tdapi.dart';

/// A chat member has gained/lost administrator status, or the list of their
/// administrator privileges has changed
class ChatEventMemberPromoted extends ChatEventAction {
  ChatEventMemberPromoted(
      {required this.userId, required this.oldStatus, required this.newStatus});

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  static const String CONSTRUCTOR = 'chatEventMemberPromoted';

  static ChatEventMemberPromoted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberPromoted(
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
