import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A button that opens a specified URL and automatically authorize the
/// current user if allowed to do so
class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeLoginUrl(
      {required this.url, required this.id, required this.forwardText});

  /// [url] An HTTP URL to open
  final String url;

  /// [id] Unique button identifier
  final int id;

  /// [forwardText] If non-empty, new text of the button in forwarded messages
  final String forwardText;

  static const String CONSTRUCTOR = 'inlineKeyboardButtonTypeLoginUrl';

  static InlineKeyboardButtonTypeLoginUrl? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeLoginUrl(
        url: json['url'], id: json['id'], forwardText: json['forward_text']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'url': this.url,
        'id': this.id,
        'forward_text': this.forwardText,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
