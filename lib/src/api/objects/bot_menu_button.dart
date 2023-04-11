import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a button to be shown instead of bot commands menu button
@immutable
class BotMenuButton extends TdObject {
  const BotMenuButton({
    required this.text,
    required this.url,
  });

  /// [text] Text of the button
  final String text;

  /// [url] URL to be passed to openWebApp
  final String url;

  static const String constructor = 'botMenuButton';

  static BotMenuButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMenuButton(
      text: json['text'] as String,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
