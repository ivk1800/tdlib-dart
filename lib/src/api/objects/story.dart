import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a story
@immutable
class Story extends TdObject {
  const Story({
    required this.id,
    required this.senderChatId,
    required this.date,
    required this.isBeingSent,
    required this.isBeingEdited,
    required this.isEdited,
    required this.isPinned,
    required this.isVisibleOnlyForSelf,
    required this.canBeForwarded,
    required this.canBeReplied,
    required this.canGetViewers,
    required this.hasExpiredViewers,
    this.interactionInfo,
    this.chosenReactionType,
    required this.privacySettings,
    required this.content,
    required this.areas,
    required this.caption,
  });

  /// [id] Unique story identifier among stories of the given sender
  final int id;

  /// [senderChatId] Identifier of the chat that posted the story
  final int senderChatId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isBeingSent] True, if the story is being sent by the current user
  final bool isBeingSent;

  /// [isBeingEdited] True, if the story is being edited by the current user
  final bool isBeingEdited;

  /// [isEdited] True, if the story was edited
  final bool isEdited;

  /// [isPinned] True, if the story is saved in the sender's profile and will be
  /// available there after expiration
  final bool isPinned;

  /// [isVisibleOnlyForSelf] True, if the story is visible only for the current
  /// user
  final bool isVisibleOnlyForSelf;

  /// [canBeForwarded] True, if the story can be forwarded as a message.
  /// Otherwise, screenshots and saving of the story content must be also
  /// forbidden
  final bool canBeForwarded;

  /// [canBeReplied] True, if the story can be replied in the chat with the
  /// story sender
  final bool canBeReplied;

  /// [canGetViewers] True, if users viewed the story can be received through
  /// getStoryViewers
  final bool canGetViewers;

  /// [hasExpiredViewers] True, if users viewed the story can't be received,
  /// because the story has expired more than
  /// getOption("story_viewers_expiration_delay") seconds ago
  final bool hasExpiredViewers;

  /// [interactionInfo] Information about interactions with the story; may be
  /// null if the story isn't owned or there were no interactions
  final StoryInteractionInfo? interactionInfo;

  /// [chosenReactionType] Type of the chosen reaction; may be null if none
  final ReactionType? chosenReactionType;

  /// [privacySettings] Privacy rules affecting story visibility; may be
  /// approximate for non-owned stories
  final StoryPrivacySettings privacySettings;

  /// [content] Content of the story
  final StoryContent content;

  /// [areas] Clickable areas to be shown on the story content
  final List<StoryArea> areas;

  /// [caption] Caption of the story
  final FormattedText caption;

  static const String constructor = 'story';

  static Story? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Story(
      id: json['id'] as int,
      senderChatId: json['sender_chat_id'] as int,
      date: json['date'] as int,
      isBeingSent: json['is_being_sent'] as bool,
      isBeingEdited: json['is_being_edited'] as bool,
      isEdited: json['is_edited'] as bool,
      isPinned: json['is_pinned'] as bool,
      isVisibleOnlyForSelf: json['is_visible_only_for_self'] as bool,
      canBeForwarded: json['can_be_forwarded'] as bool,
      canBeReplied: json['can_be_replied'] as bool,
      canGetViewers: json['can_get_viewers'] as bool,
      hasExpiredViewers: json['has_expired_viewers'] as bool,
      interactionInfo: StoryInteractionInfo.fromJson(
          json['interaction_info'] as Map<String, dynamic>?),
      chosenReactionType: ReactionType.fromJson(
          json['chosen_reaction_type'] as Map<String, dynamic>?),
      privacySettings: StoryPrivacySettings.fromJson(
          json['privacy_settings'] as Map<String, dynamic>?)!,
      content: StoryContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      areas: List<StoryArea>.from(
          ((json['areas'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StoryArea.fromJson(item))
              .toList()),
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sender_chat_id': senderChatId,
        'date': date,
        'is_being_sent': isBeingSent,
        'is_being_edited': isBeingEdited,
        'is_edited': isEdited,
        'is_pinned': isPinned,
        'is_visible_only_for_self': isVisibleOnlyForSelf,
        'can_be_forwarded': canBeForwarded,
        'can_be_replied': canBeReplied,
        'can_get_viewers': canGetViewers,
        'has_expired_viewers': hasExpiredViewers,
        'interaction_info': interactionInfo?.toJson(),
        'chosen_reaction_type': chosenReactionType?.toJson(),
        'privacy_settings': privacySettings.toJson(),
        'content': content.toJson(),
        'areas': areas.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
