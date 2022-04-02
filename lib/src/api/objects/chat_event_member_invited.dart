import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new chat member was invited
class ChatEventMemberInvited extends ChatEventAction {
  ChatEventMemberInvited({required this.userId, required this.status});

  /// [userId] New member user identifier
  final int userId;

  /// [status] New member status
  final ChatMemberStatus status;

  static const String CONSTRUCTOR = 'chatEventMemberInvited';

  static ChatEventMemberInvited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberInvited(
        userId: json['user_id'],
        status: ChatMemberStatus.fromJson(json['status'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'status': this.status.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
