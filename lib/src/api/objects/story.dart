import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a story
@immutable
class Story extends TdObject {
  const Story({
    required this.id,
    required this.senderChatId,
    this.senderId,
    required this.date,
    required this.isBeingSent,
    required this.isBeingEdited,
    required this.isEdited,
    required this.isPostedToChatPage,
    required this.isVisibleOnlyForSelf,
    required this.canBeDeleted,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeReplied,
    required this.canToggleIsPostedToChatPage,
    required this.canGetStatistics,
    required this.canGetInteractions,
    required this.hasExpiredViewers,
    this.repostInfo,
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

  /// [senderId] Identifier of the sender of the story; may be null if the story
  /// is posted on behalf of the sender_chat_id
  final MessageSender? senderId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isBeingSent] True, if the story is being sent by the current user
  final bool isBeingSent;

  /// [isBeingEdited] True, if the story is being edited by the current user
  final bool isBeingEdited;

  /// [isEdited] True, if the story was edited
  final bool isEdited;

  /// [isPostedToChatPage] True, if the story is saved in the sender's profile
  /// and will be available there after expiration
  final bool isPostedToChatPage;

  /// [isVisibleOnlyForSelf] True, if the story is visible only for the current
  /// user
  final bool isVisibleOnlyForSelf;

  /// [canBeDeleted] True, if the story can be deleted
  final bool canBeDeleted;

  /// [canBeEdited] True, if the story can be edited
  final bool canBeEdited;

  /// [canBeForwarded] True, if the story can be forwarded as a message.
  /// Otherwise, screenshots and saving of the story content must be also
  /// forbidden
  final bool canBeForwarded;

  /// [canBeReplied] True, if the story can be replied in the chat with the
  /// story sender
  final bool canBeReplied;

  /// [canToggleIsPostedToChatPage] True, if the story's is_posted_to_chat_page
  /// value can be changed
  final bool canToggleIsPostedToChatPage;

  /// [canGetStatistics] True, if the story statistics are available through
  /// getStoryStatistics
  final bool canGetStatistics;

  /// [canGetInteractions] True, if interactions with the story can be received
  /// through getStoryInteractions
  final bool canGetInteractions;

  /// [hasExpiredViewers] True, if users viewed the story can't be received,
  /// because the story has expired more than
  /// getOption("story_viewers_expiration_delay") seconds ago
  final bool hasExpiredViewers;

  /// [repostInfo] Information about the original story; may be null if the
  /// story wasn't reposted
  final StoryRepostInfo? repostInfo;

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
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?),
      date: json['date'] as int,
      isBeingSent: json['is_being_sent'] as bool,
      isBeingEdited: json['is_being_edited'] as bool,
      isEdited: json['is_edited'] as bool,
      isPostedToChatPage: json['is_posted_to_chat_page'] as bool,
      isVisibleOnlyForSelf: json['is_visible_only_for_self'] as bool,
      canBeDeleted: json['can_be_deleted'] as bool,
      canBeEdited: json['can_be_edited'] as bool,
      canBeForwarded: json['can_be_forwarded'] as bool,
      canBeReplied: json['can_be_replied'] as bool,
      canToggleIsPostedToChatPage:
          json['can_toggle_is_posted_to_chat_page'] as bool,
      canGetStatistics: json['can_get_statistics'] as bool,
      canGetInteractions: json['can_get_interactions'] as bool,
      hasExpiredViewers: json['has_expired_viewers'] as bool,
      repostInfo: StoryRepostInfo.fromJson(
          json['repost_info'] as Map<String, dynamic>?),
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
        'sender_id': senderId?.toJson(),
        'date': date,
        'is_being_sent': isBeingSent,
        'is_being_edited': isBeingEdited,
        'is_edited': isEdited,
        'is_posted_to_chat_page': isPostedToChatPage,
        'is_visible_only_for_self': isVisibleOnlyForSelf,
        'can_be_deleted': canBeDeleted,
        'can_be_edited': canBeEdited,
        'can_be_forwarded': canBeForwarded,
        'can_be_replied': canBeReplied,
        'can_toggle_is_posted_to_chat_page': canToggleIsPostedToChatPage,
        'can_get_statistics': canGetStatistics,
        'can_get_interactions': canGetInteractions,
        'has_expired_viewers': hasExpiredViewers,
        'repost_info': repostInfo?.toJson(),
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
