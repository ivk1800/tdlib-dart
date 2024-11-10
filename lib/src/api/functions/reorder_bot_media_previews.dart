import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes order of media previews in the list of media previews of a bot
/// Returns [Ok]
@immutable
class ReorderBotMediaPreviews extends TdFunction {
  const ReorderBotMediaPreviews({
    required this.botUserId,
    required this.languageCode,
    required this.fileIds,
  });

  /// [botUserId] Identifier of the target bot. The bot must be owned and must
  /// have the main Web App
  final int botUserId;

  /// [languageCode] Language code of the media previews to reorder
  final String languageCode;

  /// [fileIds] File identifiers of the media in the new order
  final List<int> fileIds;

  static const String constructor = 'reorderBotMediaPreviews';

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
