import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Replaces media preview in the list of media previews of a bot. Returns the
/// new preview after edit is completed server-side
/// Returns [BotMediaPreview]
@immutable
class EditBotMediaPreview extends TdFunction {
  const EditBotMediaPreview({
    required this.botUserId,
    required this.languageCode,
    required this.fileId,
    required this.content,
  });

  /// [botUserId] Identifier of the target bot. The bot must be owned and must
  /// have the main Web App
  final int botUserId;

  /// [languageCode] Language code of the media preview to edit
  final String languageCode;

  /// [fileId] File identifier of the media to replace
  final int fileId;

  /// [content] Content of the new preview
  final InputStoryContent content;

  static const String constructor = 'editBotMediaPreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        'file_id': fileId,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
