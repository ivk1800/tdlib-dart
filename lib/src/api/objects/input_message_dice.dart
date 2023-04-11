import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A dice message
@immutable
class InputMessageDice extends InputMessageContent {
  const InputMessageDice({
    required this.emoji,
    required this.clearDraft,
  });

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [clearDraft] True, if the chat message draft must be deleted
  final bool clearDraft;

  static const String constructor = 'inputMessageDice';

  static InputMessageDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDice(
      emoji: json['emoji'] as String,
      clearDraft: json['clear_draft'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
