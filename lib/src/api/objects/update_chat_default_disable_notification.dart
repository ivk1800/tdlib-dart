import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The value of the default disable_notification parameter, used when a
/// message is sent to the chat, was changed
@immutable
class UpdateChatDefaultDisableNotification extends Update {
  const UpdateChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultDisableNotification] The new default_disable_notification value
  final bool defaultDisableNotification;

  static const String constructor = 'updateChatDefaultDisableNotification';

  static UpdateChatDefaultDisableNotification? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatDefaultDisableNotification(
      chatId: json['chat_id'] as int,
      defaultDisableNotification: json['default_disable_notification'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'default_disable_notification': defaultDisableNotification,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
