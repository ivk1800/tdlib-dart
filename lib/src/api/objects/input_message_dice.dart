import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A dice message
class InputMessageDice extends InputMessageContent {
  InputMessageDice({required this.emoji, required this.clearDraft});

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [clearDraft] True, if the chat message draft must be deleted
  final bool clearDraft;

  static const String CONSTRUCTOR = 'inputMessageDice';

  static InputMessageDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDice(
        emoji: json['emoji'], clearDraft: json['clear_draft']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'emoji': this.emoji,
        'clear_draft': this.clearDraft,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
