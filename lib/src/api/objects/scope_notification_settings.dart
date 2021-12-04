import '../tdapi.dart';

/// Contains information about notification settings for several chats
class ScopeNotificationSettings extends TdObject {
  ScopeNotificationSettings(
      {required this.muteFor,
      required this.sound,
      required this.showPreview,
      required this.disablePinnedMessageNotifications,
      required this.disableMentionNotifications});

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [sound] The name of an audio file to be used for notification sounds; only
  /// applies to iOS applications
  final String sound;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [disablePinnedMessageNotifications] True, if notifications for incoming
  /// pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [disableMentionNotifications] True, if notifications for messages with
  /// mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  static const String CONSTRUCTOR = 'scopeNotificationSettings';

  static ScopeNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ScopeNotificationSettings(
        muteFor: json['mute_for'],
        sound: json['sound'],
        showPreview: json['show_preview'],
        disablePinnedMessageNotifications:
            json['disable_pinned_message_notifications'],
        disableMentionNotifications: json['disable_mention_notifications']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'mute_for': this.muteFor,
        'sound': this.sound,
        'show_preview': this.showPreview,
        'disable_pinned_message_notifications':
            this.disablePinnedMessageNotifications,
        'disable_mention_notifications': this.disableMentionNotifications,
        '@type': CONSTRUCTOR
      };
}
