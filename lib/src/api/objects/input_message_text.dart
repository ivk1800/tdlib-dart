import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text message
@immutable
class InputMessageText extends InputMessageContent {
  const InputMessageText({
    required this.text,
    this.linkPreviewOptions,
    required this.clearDraft,
  });

  /// [text] Formatted text to be sent; 0-getOption("message_text_length_max")
  /// characters. Only Bold, Italic, Underline, Strikethrough, Spoiler,
  /// CustomEmoji, BlockQuote, Code, Pre, PreCode, TextUrl and MentionName
  /// entities are allowed to be specified manually
  final FormattedText text;

  /// [linkPreviewOptions] Options to be used for generation of a link preview;
  /// pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  /// [clearDraft] True, if a chat message draft must be deleted
  final bool clearDraft;

  static const String constructor = 'inputMessageText';

  static InputMessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageText(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      linkPreviewOptions: LinkPreviewOptions.fromJson(
          json['link_preview_options'] as Map<String, dynamic>?),
      clearDraft: json['clear_draft'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'link_preview_options': linkPreviewOptions?.toJson(),
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
