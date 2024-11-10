import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat member extended their subscription to the chat
@immutable
class ChatEventMemberSubscriptionExtended extends ChatEventAction {
  const ChatEventMemberSubscriptionExtended({
    required this.userId,
    required this.oldStatus,
    required this.newStatus,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  static const String constructor = 'chatEventMemberSubscriptionExtended';

  static ChatEventMemberSubscriptionExtended? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberSubscriptionExtended(
      userId: json['user_id'] as int,
      oldStatus: ChatMemberStatus.fromJson(
          json['old_status'] as Map<String, dynamic>?)!,
      newStatus: ChatMemberStatus.fromJson(
          json['new_status'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'old_status': oldStatus.toJson(),
        'new_status': newStatus.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
