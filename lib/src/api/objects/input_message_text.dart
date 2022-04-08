import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text message
@immutable
class InputMessageText extends InputMessageContent {
  const InputMessageText({
    required this.text,
    required this.disableWebPagePreview,
    required this.clearDraft,
  });

  /// [text] Formatted text to be sent; 1-GetOption("message_text_length_max")
  /// characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, Code,
  /// Pre, PreCode, TextUrl and MentionName entities are allowed to be specified
  /// manually
  final FormattedText text;

  /// [disableWebPagePreview] True, if rich web page previews for URLs in the
  /// message text must be disabled
  final bool disableWebPagePreview;

  /// [clearDraft] True, if a chat message draft must be deleted
  final bool clearDraft;

  static const String constructor = 'inputMessageText';

  static InputMessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageText(
      text: FormattedText.fromJson(json['text'])!,
      disableWebPagePreview: json['disable_web_page_preview'],
      clearDraft: json['clear_draft'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'disable_web_page_preview': disableWebPagePreview,
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
