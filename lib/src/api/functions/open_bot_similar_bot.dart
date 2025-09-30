import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a bot was opened from the list of similar bots
/// Returns [Ok]
@immutable
class OpenBotSimilarBot extends TdFunction {
  const OpenBotSimilarBot({
    required this.botUserId,
    required this.openedBotUserId,
  });

  /// [botUserId] Identifier of the original bot, which similar bots were
  /// requested
  final int botUserId;

  /// [openedBotUserId] Identifier of the opened bot
  final int openedBotUserId;

  static const String constructor = 'openBotSimilarBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'opened_bot_user_id': openedBotUserId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
