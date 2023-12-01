import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about notification settings for several chats
@immutable
class ScopeNotificationSettings extends TdObject {
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.soundId,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.storySoundId,
    required this.showStorySender,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
  });

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is
  /// disabled
  final int soundId;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultMuteStories] If true, story notifications are received only for
  /// the first 5 chats from topChatCategoryUsers regardless of the value of
  /// mute_stories
  final bool useDefaultMuteStories;

  /// [muteStories] True, if story notifications are disabled
  final bool muteStories;

  /// [storySoundId] Identifier of the notification sound to be played for
  /// stories; 0 if sound is disabled
  final int storySoundId;

  /// [showStorySender] True, if the sender of stories must be displayed in
  /// notifications
  final bool showStorySender;

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
      muteFor: json['mute_for'] as int,
      soundId: int.tryParse(json['sound_id']) ?? 0,
      showPreview: json['show_preview'] as bool,
      useDefaultMuteStories: json['use_default_mute_stories'] as bool,
      muteStories: json['mute_stories'] as bool,
      storySoundId: int.tryParse(json['story_sound_id']) ?? 0,
      showStorySender: json['show_story_sender'] as bool,
      disablePinnedMessageNotifications:
          json['disable_pinned_message_notifications'] as bool,
      disableMentionNotifications:
          json['disable_mention_notifications'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mute_for': muteFor,
        'sound_id': soundId.toString(),
        'show_preview': showPreview,
        'use_default_mute_stories': useDefaultMuteStories,
        'mute_stories': muteStories,
        'story_sound_id': storySoundId.toString(),
        'show_story_sender': showStorySender,
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
