import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text message
@immutable
class MessageText extends MessageContent {
  const MessageText({
    required this.text,
    this.webPage,
  });

  /// [text] Text of the message
  final FormattedText text;

  /// [webPage] A preview of the web page that's mentioned in the text; may be
  /// null
  final WebPage? webPage;

  static const String constructor = 'messageText';

  static MessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageText(
      text: FormattedText.fromJson(json['text'])!,
      webPage: WebPage.fromJson(json['web_page']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'web_page': webPage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
