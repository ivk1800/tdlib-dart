import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about notification settings for reactions
@immutable
class ReactionNotificationSettings extends TdObject {
  const ReactionNotificationSettings({
    required this.messageReactionSource,
    required this.storyReactionSource,
    required this.soundId,
    required this.showPreview,
  });

  /// [messageReactionSource] Source of message reactions for which
  /// notifications are shown
  final ReactionNotificationSource messageReactionSource;

  /// [storyReactionSource] Source of story reactions for which notifications
  /// are shown
  final ReactionNotificationSource storyReactionSource;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is
  /// disabled
  final int soundId;

  /// [showPreview] True, if reaction sender and emoji must be displayed in
  /// notifications
  final bool showPreview;

  static const String constructor = 'reactionNotificationSettings';

  static ReactionNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReactionNotificationSettings(
      messageReactionSource: ReactionNotificationSource.fromJson(
          json['message_reaction_source'] as Map<String, dynamic>?)!,
      storyReactionSource: ReactionNotificationSource.fromJson(
          json['story_reaction_source'] as Map<String, dynamic>?)!,
      soundId: int.tryParse(json['sound_id']) ?? 0,
      showPreview: json['show_preview'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_reaction_source': messageReactionSource.toJson(),
        'story_reaction_source': storyReactionSource.toJson(),
        'sound_id': soundId.toString(),
        'show_preview': showPreview,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
