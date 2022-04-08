import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the list of commands supported by the bot for the given user scope
/// and language; for bots only
/// Returns [Ok]
@immutable
class SetCommands extends TdFunction {
  const SetCommands({
    this.scope,
    required this.languageCode,
    required this.commands,
  });

  /// [scope] The scope to which the commands are relevant; pass null to change
  /// commands in the default bot command scope
  final BotCommandScope? scope;

  /// [languageCode] A two-letter ISO 639-1 country code. If empty, the commands
  /// will be applied to all users from the given scope, for which language
  /// there are no dedicated commands
  final String languageCode;

  /// [commands] List of the bot's commands
  final List<BotCommand> commands;

  static const String constructor = 'setCommands';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope?.toJson(),
        'language_code': languageCode,
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
