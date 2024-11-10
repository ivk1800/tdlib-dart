import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat is a private or secret chat, which can be reported using the
/// method reportChat, or the other user can be blocked using the method
/// setMessageSenderBlockList, or the other user can be added to the contact
/// list using the method addContact. If the chat is a private chat with a
/// user with an emoji status, then a notice about emoji status usage must be
/// shown
@immutable
class ChatActionBarReportAddBlock extends ChatActionBar {
  const ChatActionBarReportAddBlock({
    required this.canUnarchive,
  });

  /// [canUnarchive] If true, the chat was automatically archived and can be
  /// moved back to the main chat list using addChatToList simultaneously with
  /// setting chat notification settings to default using
  /// setChatNotificationSettings
  final bool canUnarchive;

  static const String constructor = 'chatActionBarReportAddBlock';

  static ChatActionBarReportAddBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarReportAddBlock(
      canUnarchive: json['can_unarchive'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_unarchive': canUnarchive,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
