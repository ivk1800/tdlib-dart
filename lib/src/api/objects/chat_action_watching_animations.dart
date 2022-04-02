import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user is watching animations sent by the other party by clicking on an
/// animated emoji
class ChatActionWatchingAnimations extends ChatAction {
  ChatActionWatchingAnimations({required this.emoji});

  /// [emoji] The animated emoji
  final String emoji;

  static const String CONSTRUCTOR = 'chatActionWatchingAnimations';

  static ChatActionWatchingAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionWatchingAnimations(emoji: json['emoji']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'emoji': this.emoji, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
