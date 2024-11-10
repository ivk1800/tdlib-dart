import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of media previews for the given language and the list of
/// languages for which the bot has dedicated previews
/// Returns [BotMediaPreviewInfo]
@immutable
class GetBotMediaPreviewInfo extends TdFunction {
  const GetBotMediaPreviewInfo({
    required this.botUserId,
    required this.languageCode,
  });

  /// [botUserId] Identifier of the target bot. The bot must be owned and must
  /// have the main Web App
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code for which to get
  /// previews. If empty, then default previews are returned
  final String languageCode;

  static const String constructor = 'getBotMediaPreviewInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
