import '../tdapi.dart';

/// Options to be used when a message is sent
class MessageSendOptions extends TdObject {
  MessageSendOptions(
      {required this.disableNotification,
      required this.fromBackground,
      this.schedulingState});

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [schedulingState] Message scheduling state; pass null to send message
  /// immediately. Messages sent to a secret chat, live location messages and
  /// self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  static const String CONSTRUCTOR = 'messageSendOptions';

  static MessageSendOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendOptions(
        disableNotification: json['disable_notification'],
        fromBackground: json['from_background'],
        schedulingState:
            MessageSchedulingState.fromJson(json['scheduling_state']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'disable_notification': this.disableNotification,
        'from_background': this.fromBackground,
        'scheduling_state': this.schedulingState?.toJson(),
        '@type': CONSTRUCTOR
      };
}
