import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes name of a chat folder
@immutable
class ChatFolderName extends TdObject {
  const ChatFolderName({required this.text, required this.animateCustomEmoji});

  /// [text] The text of the chat folder name; 1-12 characters without line
  /// feeds. May contain only CustomEmoji entities
  final FormattedText text;

  /// [animateCustomEmoji] True, if custom emoji in the name must be animated
  final bool animateCustomEmoji;

  static const String constructor = 'chatFolderName';

  static ChatFolderName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderName(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      animateCustomEmoji: json['animate_custom_emoji'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text.toJson(),
    'animate_custom_emoji': animateCustomEmoji,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
