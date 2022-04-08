import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the slow mode delay of a chat. Available only for supergroups;
/// requires can_restrict_members rights
/// Returns [Ok]
@immutable
class SetChatSlowModeDelay extends TdFunction {
  const SetChatSlowModeDelay({
    required this.chatId,
    required this.slowModeDelay,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [slowModeDelay] New slow mode delay for the chat, in seconds; must be one
  /// of 0, 10, 30, 60, 300, 900, 3600
  final int slowModeDelay;

  static const String constructor = 'setChatSlowModeDelay';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'slow_mode_delay': slowModeDelay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
