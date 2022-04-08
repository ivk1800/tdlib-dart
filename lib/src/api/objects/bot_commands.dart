import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of bot commands
@immutable
class BotCommands extends TdObject {
  const BotCommands({
    required this.botUserId,
    required this.commands,
  });

  /// [botUserId] Bot's user identifier
  final int botUserId;

  /// [commands] List of bot commands
  final List<BotCommand> commands;

  static const String constructor = 'botCommands';

  static BotCommands? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommands(
      botUserId: json['bot_user_id'],
      commands: List<BotCommand>.from((json['commands'] ?? [])
          .map((item) => BotCommand.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
