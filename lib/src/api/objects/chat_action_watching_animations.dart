import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is watching animations sent by the other party by clicking on an
/// animated emoji
@immutable
class ChatActionWatchingAnimations extends ChatAction {
  const ChatActionWatchingAnimations({
    required this.emoji,
  });

  /// [emoji] The animated emoji
  final String emoji;

  static const String constructor = 'chatActionWatchingAnimations';

  static ChatActionWatchingAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionWatchingAnimations(
      emoji: json['emoji'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
