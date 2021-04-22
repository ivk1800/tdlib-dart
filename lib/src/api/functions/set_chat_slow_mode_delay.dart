import '../tdapi.dart';

/// Changes the slow mode delay of a chat. Available only for supergroups;
/// requires can_restrict_members rights
/// Returns [Ok]
class SetChatSlowModeDelay extends TdFunction {
  SetChatSlowModeDelay({required this.chatId, required this.slowModeDelay});

  /// [chatId] Chat identifier
  final int chatId;

  /// [slowModeDelay] New slow mode delay for the chat; must be one of 0, 10,
  /// 30, 60, 300, 900, 3600
  final int slowModeDelay;

  static const String CONSTRUCTOR = 'setChatSlowModeDelay';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'slow_mode_delay': this.slowModeDelay,
        '@type': CONSTRUCTOR
      };
}
