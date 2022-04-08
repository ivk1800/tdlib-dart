import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user has started to play a game
@immutable
class ChatActionStartPlayingGame extends ChatAction {
  const ChatActionStartPlayingGame();

  static const String constructor = 'chatActionStartPlayingGame';

  static ChatActionStartPlayingGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionStartPlayingGame();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
