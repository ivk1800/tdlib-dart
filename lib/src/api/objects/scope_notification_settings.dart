import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about notification settings for several chats
@immutable
class ScopeNotificationSettings extends TdObject {
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.sound,
    required this.showPreview,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
  });

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

  static const String constructor = 'scopeNotificationSettings';

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
      disableMentionNotifications: json['disable_mention_notifications'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mute_for': muteFor,
        'sound': sound,
        'show_preview': showPreview,
        'disable_pinned_message_notifications':
            disablePinnedMessageNotifications,
        'disable_mention_notifications': disableMentionNotifications,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
