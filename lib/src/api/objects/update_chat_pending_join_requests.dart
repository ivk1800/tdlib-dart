import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The chat pending join requests were changed
class UpdateChatPendingJoinRequests extends Update {
  UpdateChatPendingJoinRequests(
      {required this.chatId, this.pendingJoinRequests});

  /// [chatId] Chat identifier
  final int chatId;

  /// [pendingJoinRequests] The new data about pending join requests; may be
  /// null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  static const String CONSTRUCTOR = 'updateChatPendingJoinRequests';

  static UpdateChatPendingJoinRequests? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPendingJoinRequests(
        chatId: json['chat_id'],
        pendingJoinRequests:
            ChatJoinRequestsInfo.fromJson(json['pending_join_requests']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'pending_join_requests': this.pendingJoinRequests?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
