import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat is a private or secret chat, which can be reported using the
/// method reportChat, or the other user can be blocked using the method
/// toggleMessageSenderIsBlocked, or the other user can be added to the
/// contact list using the method addContact. If the chat is a private chat
/// with a user with an emoji status, then a notice about emoji status usage
/// must be shown
@immutable
class ChatActionBarReportAddBlock extends ChatActionBar {
  const ChatActionBarReportAddBlock({
    required this.canUnarchive,
    required this.distance,
  });

  /// [canUnarchive] If true, the chat was automatically archived and can be
  /// moved back to the main chat list using addChatToList simultaneously with
  /// setting chat notification settings to default using
  /// setChatNotificationSettings
  final bool canUnarchive;

  /// [distance] If non-negative, the current user was found by the peer through
  /// searchChatsNearby and this is the distance between the users
  final int distance;

  static const String constructor = 'chatActionBarReportAddBlock';

  static ChatActionBarReportAddBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarReportAddBlock(
      canUnarchive: json['can_unarchive'] as bool,
      distance: json['distance'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_unarchive': canUnarchive,
        'distance': distance,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
