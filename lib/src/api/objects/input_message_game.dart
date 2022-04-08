import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a game; not supported for channels or secret chats
@immutable
class InputMessageGame extends InputMessageContent {
  const InputMessageGame({
    required this.botUserId,
    required this.gameShortName,
  });

  /// [botUserId] User identifier of the bot that owns the game
  final int botUserId;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  static const String constructor = 'inputMessageGame';

  static InputMessageGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageGame(
      botUserId: json['bot_user_id'],
      gameShortName: json['game_short_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'game_short_name': gameShortName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
