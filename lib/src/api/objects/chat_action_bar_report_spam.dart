import '../tdapi.dart';

/// The chat can be reported as spam using the method reportChat with the
/// reason chatReportReasonSpam
class ChatActionBarReportSpam extends ChatActionBar {
  ChatActionBarReportSpam({required this.canUnarchive});

  /// [canUnarchive] If true, the chat was automatically archived and can be
  /// moved back to the main chat list using addChatToList simultaneously with
  /// setting chat notification settings to default using
  /// setChatNotificationSettings
  final bool canUnarchive;

  static const String CONSTRUCTOR = 'chatActionBarReportSpam';

  static ChatActionBarReportSpam? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarReportSpam(canUnarchive: json['can_unarchive']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'can_unarchive': this.canUnarchive, '@type': CONSTRUCTOR};
}
