import '../tdapi.dart';

/// Provides information about a bot and its supported commands
class BotInfo extends TdObject {
  BotInfo({required this.description, required this.commands});

  /// param_[description] Long description shown on the user info page
  final String description;

  /// [commands] A list of commands supported by the bot
  final List<BotCommand> commands;

  static const String CONSTRUCTOR = 'botInfo';

  static BotInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotInfo(
        description: json['description'],
        commands: List<BotCommand>.from((json['commands'] ?? [])
            .map((item) => BotCommand.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'description': this.description,
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
