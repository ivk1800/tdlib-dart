import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the text shown on the bot's profile page and sent together with the
/// link when users share the bot; bots only
/// Returns [Ok]
@immutable
class SetBotInfoShortDescription extends TdFunction {
  const SetBotInfoShortDescription({
    required this.languageCode,
    required this.shortDescription,
  });

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the short
  /// description will be shown to all users, for which language there are no
  /// dedicated description
  final String languageCode;

  /// [shortDescription] New bot's short description on the specified language
  final String shortDescription;

  static const String constructor = 'setBotInfoShortDescription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_code': languageCode,
        'short_description': shortDescription,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
