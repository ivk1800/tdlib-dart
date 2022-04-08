import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The text uses HTML-style formatting. The same as Telegram Bot API "HTML"
/// parse mode
@immutable
class TextParseModeHTML extends TextParseMode {
  const TextParseModeHTML();

  static const String constructor = 'textParseModeHTML';

  static TextParseModeHTML? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextParseModeHTML();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
