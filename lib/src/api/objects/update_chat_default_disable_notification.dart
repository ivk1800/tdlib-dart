import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The value of the default disable_notification parameter, used when a
/// message is sent to the chat, was changed
class UpdateChatDefaultDisableNotification extends Update {
  UpdateChatDefaultDisableNotification(
      {required this.chatId, required this.defaultDisableNotification});

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultDisableNotification] The new default_disable_notification value
  final bool defaultDisableNotification;

  static const String CONSTRUCTOR = 'updateChatDefaultDisableNotification';

  static UpdateChatDefaultDisableNotification? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatDefaultDisableNotification(
        chatId: json['chat_id'],
        defaultDisableNotification: json['default_disable_notification']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'default_disable_notification': this.defaultDisableNotification,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
