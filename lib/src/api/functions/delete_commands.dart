import '../tdapi.dart';

/// Deletes commands supported by the bot for the given user scope and
/// language; for bots only
/// Returns [Ok]
class DeleteCommands extends TdFunction {
  DeleteCommands({this.scope, required this.languageCode});

  /// [scope] The scope to which the commands are relevant; pass null to delete
  /// commands in the default bot command scope
  final BotCommandScope? scope;

  /// [languageCode] A two-letter ISO 639-1 country code or an empty string
  final String languageCode;

  static const String CONSTRUCTOR = 'deleteCommands';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'scope': this.scope?.toJson(),
        'language_code': this.languageCode,
        '@type': CONSTRUCTOR
      };
}
