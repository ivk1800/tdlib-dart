import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the message content has been opened (e.g., the user has
/// opened a photo, video, document, location or venue, or has listened to an
/// audio file or voice note message). An updateMessageContentOpened update
/// will be generated if something has changed
/// Returns [Ok]
@immutable
class OpenMessageContent extends TdFunction {
  const OpenMessageContent({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Identifier of the message with the opened content
  final int messageId;

  static const String constructor = 'openMessageContent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
