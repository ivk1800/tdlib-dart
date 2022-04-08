import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a notification about a screenshot taken in a chat. Supported only in
/// private and secret chats
/// Returns [Ok]
@immutable
class SendChatScreenshotTakenNotification extends TdFunction {
  const SendChatScreenshotTakenNotification({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'sendChatScreenshotTakenNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
