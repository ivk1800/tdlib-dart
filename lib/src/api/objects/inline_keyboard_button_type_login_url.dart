import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that opens a specified URL and automatically authorize the
/// current user by calling getLoginUrlInfo
@immutable
class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeLoginUrl({
    required this.url,
    required this.id,
    required this.forwardText,
  });

  /// [url] An HTTP URL to pass to getLoginUrlInfo
  final String url;

  /// [id] Unique button identifier
  final int id;

  /// [forwardText] If non-empty, new text of the button in forwarded messages
  final String forwardText;

  static const String constructor = 'inlineKeyboardButtonTypeLoginUrl';

  static InlineKeyboardButtonTypeLoginUrl? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeLoginUrl(
      url: json['url'] as String,
      id: json['id'] as int,
      forwardText: json['forward_text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'id': id,
        'forward_text': forwardText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
