import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat pending join requests were changed
@immutable
class UpdateChatPendingJoinRequests extends Update {
  const UpdateChatPendingJoinRequests({
    required this.chatId,
    this.pendingJoinRequests,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [pendingJoinRequests] The new data about pending join requests; may be
  /// null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  static const String constructor = 'updateChatPendingJoinRequests';

  static UpdateChatPendingJoinRequests? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPendingJoinRequests(
      chatId: json['chat_id'],
      pendingJoinRequests:
          ChatJoinRequestsInfo.fromJson(json['pending_join_requests']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'pending_join_requests': pendingJoinRequests?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
