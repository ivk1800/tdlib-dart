import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns advertisements to be shown while a video from a message is
/// watched. Available only if messageProperties.can_get_video_advertisements
/// Returns [VideoMessageAdvertisements]
@immutable
class GetVideoMessageAdvertisements extends TdFunction {
  const GetVideoMessageAdvertisements({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'getVideoMessageAdvertisements';

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
