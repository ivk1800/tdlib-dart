import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the text shown on the bot's profile page and sent together with
/// the link when users share the bot in the given language; bots only
/// Returns [Text]
@immutable
class GetBotInfoShortDescription extends TdFunction {
  const GetBotInfoShortDescription({
    required this.languageCode,
  });

  /// [languageCode] A two-letter ISO 639-1 language code or an empty string
  final String languageCode;

  static const String constructor = 'getBotInfoShortDescription';

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
