import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTML code for embedding the message. Available only if
/// messageProperties.can_get_embedding_code
/// Returns [Text]
@immutable
class GetMessageEmbeddingCode extends TdFunction {
  const GetMessageEmbeddingCode({
    required this.chatId,
    required this.messageId,
    required this.forAlbum,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [forAlbum] Pass true to return an HTML code for embedding of the whole
  /// media album
  final bool forAlbum;

  static const String constructor = 'getMessageEmbeddingCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'for_album': forAlbum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
