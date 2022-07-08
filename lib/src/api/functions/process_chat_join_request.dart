import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Handles a pending join request in a chat
/// Returns [Ok]
@immutable
class ProcessChatJoinRequest extends TdFunction {
  const ProcessChatJoinRequest({
    required this.chatId,
    required this.userId,
    required this.approve,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user that sent the request
  final int userId;

  /// [approve] Pass true to approve the request; pass false to decline it
  final bool approve;

  static const String constructor = 'processChatJoinRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        'approve': approve,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
