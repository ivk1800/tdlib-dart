import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Pauses or resumes the connected business bot in a specific chat
/// Returns [Ok]
@immutable
class ToggleBusinessConnectedBotChatIsPaused extends TdFunction {
  const ToggleBusinessConnectedBotChatIsPaused({
    required this.chatId,
    required this.isPaused,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isPaused] Pass true to pause the connected bot in the chat; pass false to
  /// resume the bot
  final bool isPaused;

  static const String constructor = 'toggleBusinessConnectedBotChatIsPaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_paused': isPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
