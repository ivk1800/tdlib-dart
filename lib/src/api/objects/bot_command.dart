import '../tdapi.dart';

/// Represents a command supported by a bot
class BotCommand extends TdObject {
  BotCommand({required this.command, required this.description});

  /// [command] Text of the bot command
  final String command;

  /// param_[description] Description of the bot command
  final String description;

  static const String CONSTRUCTOR = 'botCommand';

  static BotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommand(
        command: json['command'], description: json['description']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'command': this.command,
        'description': this.description,
        '@type': CONSTRUCTOR
      };
}
