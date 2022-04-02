import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user has started to play a game
class ChatActionStartPlayingGame extends ChatAction {
  const ChatActionStartPlayingGame();

  static const String CONSTRUCTOR = 'chatActionStartPlayingGame';

  static ChatActionStartPlayingGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionStartPlayingGame();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
