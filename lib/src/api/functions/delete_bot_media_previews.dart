import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Delete media previews from the list of media previews of a bot
/// Returns [Ok]
@immutable
class DeleteBotMediaPreviews extends TdFunction {
  const DeleteBotMediaPreviews({
    required this.botUserId,
    required this.languageCode,
    required this.fileIds,
  });

  /// [botUserId] Identifier of the target bot. The bot must be owned and must
  /// have the main Web App
  final int botUserId;

  /// [languageCode] Language code of the media previews to delete
  final String languageCode;

  /// [fileIds] File identifiers of the media to delete
  final List<int> fileIds;

  static const String constructor = 'deleteBotMediaPreviews';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        'file_ids': fileIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
