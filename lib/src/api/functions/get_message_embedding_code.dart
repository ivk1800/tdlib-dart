import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns an HTML code for embedding the message. Available only for
/// messages in supergroups and channels with a username
/// Returns [Text]
class GetMessageEmbeddingCode extends TdFunction {
  GetMessageEmbeddingCode(
      {required this.chatId, required this.messageId, required this.forAlbum});

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [forAlbum] Pass true to return an HTML code for embedding of the whole
  /// media album
  final bool forAlbum;

  static const String CONSTRUCTOR = 'getMessageEmbeddingCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'for_album': this.forAlbum,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
