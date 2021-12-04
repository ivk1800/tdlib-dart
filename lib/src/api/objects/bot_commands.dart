import '../tdapi.dart';

/// Contains a list of bot commands
class BotCommands extends TdObject {
  BotCommands({required this.botUserId, required this.commands});

  /// [botUserId] Bot's user identifier
  final int botUserId;

  /// [commands] List of bot commands
  final List<BotCommand> commands;

  static const String CONSTRUCTOR = 'botCommands';

  static BotCommands? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommands(
        botUserId: json['bot_user_id'],
        commands: List<BotCommand>.from((json['commands'] ?? [])
            .map((item) => BotCommand.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_user_id': this.botUserId,
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
