import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a command supported by a bot
@immutable
class BotCommand extends TdObject {
  const BotCommand({
    required this.command,
    required this.description,
  });

  /// [command] Text of the bot command
  final String command;

  /// param_[description] Description of the bot command
  final String description;

  static const String constructor = 'botCommand';

  static BotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommand(
      command: json['command'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'command': command,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
