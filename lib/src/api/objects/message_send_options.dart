import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Options to be used when a message is sent
@immutable
class MessageSendOptions extends TdObject {
  const MessageSendOptions({
    required this.disableNotification,
    required this.fromBackground,
    this.protectContent,
    this.schedulingState,
  });

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving; for bots only
  final bool? protectContent;

  /// [schedulingState] Message scheduling state; pass null to send message
  /// immediately. Messages sent to a secret chat, live location messages and
  /// self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  static const String constructor = 'messageSendOptions';

  static MessageSendOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendOptions(
      disableNotification: json['disable_notification'],
      fromBackground: json['from_background'],
      protectContent: json['protect_content'],
      schedulingState:
          MessageSchedulingState.fromJson(json['scheduling_state']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'disable_notification': disableNotification,
        'from_background': fromBackground,
        'protect_content': protectContent,
        'scheduling_state': schedulingState?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
