import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A button that opens a specified URL
class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeUrl({required this.url});

  /// [url] HTTP or tg:// URL to open
  final String url;

  static const String CONSTRUCTOR = 'inlineKeyboardButtonTypeUrl';

  static InlineKeyboardButtonTypeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeUrl(url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'url': this.url, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
