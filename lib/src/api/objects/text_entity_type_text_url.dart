import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text description shown instead of a raw URL
@immutable
class TextEntityTypeTextUrl extends TextEntityType {
  const TextEntityTypeTextUrl({
    required this.url,
  });

  /// [url] HTTP or tg:// URL to be opened when the link is clicked
  final String url;

  static const String constructor = 'textEntityTypeTextUrl';

  static TextEntityTypeTextUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeTextUrl(
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
