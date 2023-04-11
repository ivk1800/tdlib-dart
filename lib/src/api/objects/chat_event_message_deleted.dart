import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message was deleted
@immutable
class ChatEventMessageDeleted extends ChatEventAction {
  const ChatEventMessageDeleted({
    required this.message,
    required this.canReportAntiSpamFalsePositive,
  });

  /// [message] Deleted message
  final Message message;

  /// [canReportAntiSpamFalsePositive] True, if the message deletion can be
  /// reported via reportSupergroupAntiSpamFalsePositive
  final bool canReportAntiSpamFalsePositive;

  static const String constructor = 'chatEventMessageDeleted';

  static ChatEventMessageDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageDeleted(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      canReportAntiSpamFalsePositive:
          json['can_report_anti_spam_false_positive'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'can_report_anti_spam_false_positive': canReportAntiSpamFalsePositive,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
