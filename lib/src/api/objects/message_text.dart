import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A text message
class MessageText extends MessageContent {
  MessageText({required this.text, this.webPage});

  /// [text] Text of the message
  final FormattedText text;

  /// [webPage] A preview of the web page that's mentioned in the text; may be
  /// null
  final WebPage? webPage;

  static const String CONSTRUCTOR = 'messageText';

  static MessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageText(
        text: FormattedText.fromJson(json['text'])!,
        webPage: WebPage.fromJson(json['web_page']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'web_page': this.webPage?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
