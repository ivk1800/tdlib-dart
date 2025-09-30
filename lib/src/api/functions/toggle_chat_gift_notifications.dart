import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether notifications for new gifts received by a channel chat are
/// sent to the current user; requires can_post_messages administrator right
/// in the chat
/// Returns [Ok]
@immutable
class ToggleChatGiftNotifications extends TdFunction {
  const ToggleChatGiftNotifications({
    required this.chatId,
    required this.areEnabled,
  });

  /// [chatId] Identifier of the channel chat
  final int chatId;

  /// [areEnabled] Pass true to enable notifications about new gifts owned by
  /// the channel chat; pass false to disable the notifications
  final bool areEnabled;

  static const String constructor = 'toggleChatGiftNotifications';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'are_enabled': areEnabled,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
