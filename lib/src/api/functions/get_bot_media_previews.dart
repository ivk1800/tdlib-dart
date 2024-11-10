import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of media previews of a bot
/// Returns [BotMediaPreviews]
@immutable
class GetBotMediaPreviews extends TdFunction {
  const GetBotMediaPreviews({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot. The bot must have the main Web
  /// App
  final int botUserId;

  static const String constructor = 'getBotMediaPreviews';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
