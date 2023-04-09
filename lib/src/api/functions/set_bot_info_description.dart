import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the text shown in the chat with the bot if the chat is empty; bots
/// only
/// Returns [Ok]
@immutable
class SetBotInfoDescription extends TdFunction {
  const SetBotInfoDescription({
    required this.languageCode,
    required this.description,
  });

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the
  /// description will be shown to all users, for which language there are no
  /// dedicated description
  final String languageCode;

  /// param_[description] New bot's description on the specified language
  final String description;

  static const String constructor = 'setBotInfoDescription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_code': languageCode,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
