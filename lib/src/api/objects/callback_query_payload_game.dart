import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The payload for a game callback button
@immutable
class CallbackQueryPayloadGame extends CallbackQueryPayload {
  const CallbackQueryPayloadGame({
    required this.gameShortName,
  });

  /// [gameShortName] A short name of the game that was attached to the callback
  /// button
  final String gameShortName;

  static const String constructor = 'callbackQueryPayloadGame';

  static CallbackQueryPayloadGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadGame(
      gameShortName: json['game_short_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'game_short_name': gameShortName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
