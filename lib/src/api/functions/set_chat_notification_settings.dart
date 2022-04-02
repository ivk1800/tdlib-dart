import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the notification settings of a chat. Notification settings of a
/// chat with the current user (Saved Messages) can't be changed
/// Returns [Ok]
class SetChatNotificationSettings extends TdFunction {
  SetChatNotificationSettings(
      {required this.chatId, required this.notificationSettings});

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] New notification settings for the chat. If the chat
  /// is muted for more than 1 week, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;

  static const String CONSTRUCTOR = 'setChatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'notification_settings': this.notificationSettings.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
