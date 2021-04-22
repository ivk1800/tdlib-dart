import '../tdapi.dart';

/// A dice message
class InputMessageDice extends InputMessageContent {
  InputMessageDice({required this.emoji, required this.clearDraft});

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [clearDraft] True, if a chat message draft should be deleted
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
}
