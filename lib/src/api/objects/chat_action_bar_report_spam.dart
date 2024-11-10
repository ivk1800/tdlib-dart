import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat can be reported as spam using the method reportChat with an empty
/// option_id and message_ids. If the chat is a private chat with a user with
/// an emoji status, then a notice about emoji status usage must be shown
@immutable
class ChatActionBarReportSpam extends ChatActionBar {
  const ChatActionBarReportSpam({
    required this.canUnarchive,
  });

  /// [canUnarchive] If true, the chat was automatically archived and can be
  /// moved back to the main chat list using addChatToList simultaneously with
  /// setting chat notification settings to default using
  /// setChatNotificationSettings
  final bool canUnarchive;

  static const String constructor = 'chatActionBarReportSpam';

  static ChatActionBarReportSpam? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarReportSpam(
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
