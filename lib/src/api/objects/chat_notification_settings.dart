import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about notification settings for a chat
@immutable
class ChatNotificationSettings extends TdObject {
  const ChatNotificationSettings({
    required this.useDefaultMuteFor,
    required this.muteFor,
    required this.useDefaultSound,
    required this.sound,
    required this.useDefaultShowPreview,
    required this.showPreview,
    required this.useDefaultDisablePinnedMessageNotifications,
    required this.disablePinnedMessageNotifications,
    required this.useDefaultDisableMentionNotifications,
    required this.disableMentionNotifications,
  });

  /// [useDefaultMuteFor] If true, mute_for is ignored and the value for the
  /// relevant type of chat is used instead
  final bool useDefaultMuteFor;

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [useDefaultSound] If true, sound is ignored and the value for the relevant
  /// type of chat is used instead
  final bool useDefaultSound;

  /// [sound] The name of an audio file to be used for notification sounds; only
  /// applies to iOS applications
  final String sound;

  /// [useDefaultShowPreview] If true, show_preview is ignored and the value for
  /// the relevant type of chat is used instead
  final bool useDefaultShowPreview;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultDisablePinnedMessageNotifications] If true,
  /// disable_pinned_message_notifications is ignored and the value for the
  /// relevant type of chat is used instead
  final bool useDefaultDisablePinnedMessageNotifications;

  /// [disablePinnedMessageNotifications] If true, notifications for incoming
  /// pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [useDefaultDisableMentionNotifications] If true,
  /// disable_mention_notifications is ignored and the value for the relevant
  /// type of chat is used instead
  final bool useDefaultDisableMentionNotifications;

  /// [disableMentionNotifications] If true, notifications for messages with
  /// mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  static const String constructor = 'chatNotificationSettings';

  static ChatNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatNotificationSettings(
      useDefaultMuteFor: json['use_default_mute_for'],
      muteFor: json['mute_for'],
      useDefaultSound: json['use_default_sound'],
      sound: json['sound'],
      useDefaultShowPreview: json['use_default_show_preview'],
      showPreview: json['show_preview'],
      useDefaultDisablePinnedMessageNotifications:
          json['use_default_disable_pinned_message_notifications'],
      disablePinnedMessageNotifications:
          json['disable_pinned_message_notifications'],
      useDefaultDisableMentionNotifications:
          json['use_default_disable_mention_notifications'],
      disableMentionNotifications: json['disable_mention_notifications'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'use_default_mute_for': useDefaultMuteFor,
        'mute_for': muteFor,
        'use_default_sound': useDefaultSound,
        'sound': sound,
        'use_default_show_preview': useDefaultShowPreview,
        'show_preview': showPreview,
        'use_default_disable_pinned_message_notifications':
            useDefaultDisablePinnedMessageNotifications,
        'disable_pinned_message_notifications':
            disablePinnedMessageNotifications,
        'use_default_disable_mention_notifications':
            useDefaultDisableMentionNotifications,
        'disable_mention_notifications': disableMentionNotifications,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
