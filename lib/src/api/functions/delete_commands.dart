import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes commands supported by the bot for the given user scope and
/// language; for bots only
/// Returns [Ok]
@immutable
class DeleteCommands extends TdFunction {
  const DeleteCommands({
    this.scope,
    required this.languageCode,
  });

  /// [scope] The scope to which the commands are relevant; pass null to delete
  /// commands in the default bot command scope
  final BotCommandScope? scope;

  /// [languageCode] A two-letter ISO 639-1 country code or an empty string
  final String languageCode;

  static const String constructor = 'deleteCommands';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope?.toJson(),
        'language_code': languageCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
