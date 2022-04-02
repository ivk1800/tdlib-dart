import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Handles a pending join request in a chat
/// Returns [Ok]
class ProcessChatJoinRequest extends TdFunction {
  ProcessChatJoinRequest(
      {required this.chatId, required this.userId, required this.approve});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user that sent the request
  final int userId;

  /// [approve] True, if the request is approved. Otherwise the request is
  /// declived
  final bool approve;

  static const String CONSTRUCTOR = 'processChatJoinRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        'approve': this.approve,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
