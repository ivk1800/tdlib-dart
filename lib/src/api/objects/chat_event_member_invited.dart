import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new chat member was invited
@immutable
class ChatEventMemberInvited extends ChatEventAction {
  const ChatEventMemberInvited({
    required this.userId,
    required this.status,
  });

  /// [userId] New member user identifier
  final int userId;

  /// [status] New member status
  final ChatMemberStatus status;

  static const String constructor = 'chatEventMemberInvited';

  static ChatEventMemberInvited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberInvited(
      userId: json['user_id'],
      status: ChatMemberStatus.fromJson(json['status'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
