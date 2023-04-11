import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that opens a specified URL
@immutable
class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeUrl({
    required this.url,
  });

  /// [url] HTTP or tg:// URL to open
  final String url;

  static const String constructor = 'inlineKeyboardButtonTypeUrl';

  static InlineKeyboardButtonTypeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeUrl(
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
