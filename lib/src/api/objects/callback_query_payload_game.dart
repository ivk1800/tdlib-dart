import '../tdapi.dart';

/// The payload for a game callback button
class CallbackQueryPayloadGame extends CallbackQueryPayload {
  CallbackQueryPayloadGame({required this.gameShortName});

  /// [gameShortName] A short name of the game that was attached to the callback
  /// button
  final String gameShortName;

  static const String CONSTRUCTOR = 'callbackQueryPayloadGame';

  static CallbackQueryPayloadGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadGame(gameShortName: json['game_short_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'game_short_name': this.gameShortName, '@type': CONSTRUCTOR};
}
