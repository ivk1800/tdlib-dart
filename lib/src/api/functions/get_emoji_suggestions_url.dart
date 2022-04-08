import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTP URL which can be used to automatically log in to the
/// translation platform and suggest new emoji replacements. The URL will be
/// valid for 30 seconds after generation
/// Returns [HttpUrl]
@immutable
class GetEmojiSuggestionsUrl extends TdFunction {
  const GetEmojiSuggestionsUrl({
    required this.languageCode,
  });

  /// [languageCode] Language code for which the emoji replacements will be
  /// suggested
  final String languageCode;

  static const String constructor = 'getEmojiSuggestionsUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_code': languageCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
