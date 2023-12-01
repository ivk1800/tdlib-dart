import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text message
@immutable
class MessageText extends MessageContent {
  const MessageText({
    required this.text,
    this.webPage,
    this.linkPreviewOptions,
  });

  /// [text] Text of the message
  final FormattedText text;

  /// [webPage] A link preview attached to the message; may be null
  final WebPage? webPage;

  /// [linkPreviewOptions] Options which were used for generation of the link
  /// preview; may be null if default options were used
  final LinkPreviewOptions? linkPreviewOptions;

  static const String constructor = 'messageText';

  static MessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageText(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      webPage: WebPage.fromJson(json['web_page'] as Map<String, dynamic>?),
      linkPreviewOptions: LinkPreviewOptions.fromJson(
          json['link_preview_options'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'web_page': webPage?.toJson(),
        'link_preview_options': linkPreviewOptions?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
